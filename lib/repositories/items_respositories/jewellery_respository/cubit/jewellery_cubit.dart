import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:divar/packages/dio/dio.dart';
import 'package:divar/repositories/items_respositories/jewellery_respository/constants/constants.dart';
import 'package:divar/repositories/items_respositories/jewellery_respository/models/jewellery_model.dart';
import 'package:divar/repositories/pagination_repository/models/pagination_model.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'jewellery_state.dart';

class JewelleryCubit extends Cubit<JewelleryState> {
  late Dio? _dio;
  late PaginationModel? _paginationModel;
  late CancelToken _cancelToken;
  late Response? _response;
  late List<JewelleryModel>? _jewelleryModelsList;

  JewelleryCubit() : super(JewelleryLoading()) {
    _dio = MyDio.getInstance();
    _cancelToken = MyDio.cancelToken;
    _jewelleryModelsList = [];
  }

  void emitGetJewellerys() async {
    try {
      _jewelleryModelsList = [];
      emit(JewelleryLoading());
      emit(JewelleryFetchingData());
      _cancelToken = CancelToken();
      _response = await _dio!.get(
          '${MyDio.baseAPIUrl}${JewelleryConstants.apiShowAllJewellery}',
          cancelToken: _cancelToken);
      if (_response!.statusCode == 200) {
        _paginationModel = PaginationModel.fromMap(_response!.data);
        List? jewelleryItemsList = _paginationModel!.paginationData;
        jewelleryItemsList?.forEach((jewelleryMapModel) {
          // _jewelleryModelsList!.add(JewelleryModel.fromMapItemModel(jewelleryMapModel));
        });
        emit(JewellerysListLoaded(_jewelleryModelsList!));
      } else {
        emit(JewelleryError('error'));
      }
    } on Exception catch (e) {
      emit(JewelleryError(e.toString()));
    }
  }
}
