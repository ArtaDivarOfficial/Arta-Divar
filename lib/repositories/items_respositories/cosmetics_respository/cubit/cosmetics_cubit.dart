import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:divar/packages/dio/dio.dart';
import 'package:divar/repositories/items_respositories/cosmetics_respository/constants/constants.dart';
import 'package:divar/repositories/items_respositories/cosmetics_respository/models/cosmetics_model.dart';
import 'package:divar/repositories/pagination_repository/models/pagination_model.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'cosmetics_state.dart';

class CosmeticsCubit extends Cubit<CosmeticsState> {
  late Dio? _dio;
  late PaginationModel? _paginationModel;
  late CancelToken _cancelToken;
  late Response? _response;
  late List<CosmeticsModel>? _cosmeticsModelsList;

  CosmeticsCubit() : super(CosmeticsLoading()) {
    _dio = MyDio.getInstance();
    _cancelToken = MyDio.cancelToken;
    _cosmeticsModelsList = [];
  }

  void emitGetCosmeticss() async {
    try {
      _cosmeticsModelsList = [];
      emit(CosmeticsLoading());
      emit(CosmeticsFetchingData());
      _cancelToken = CancelToken();
      _response = await _dio!.get(
          '${MyDio.baseAPIUrl}${CosmeticsConstants.apiShowAllCosmeticses}',
          cancelToken: _cancelToken);
      if (_response!.statusCode == 200) {
        _paginationModel = PaginationModel.fromMap(_response!.data);
        List? cosmeticsItemsList = _paginationModel!.paginationData;
        cosmeticsItemsList?.forEach((cosmeticsMapModel) {
          // _cosmeticsModelsList!.add(CosmeticsModel.fromMapItemModel(cosmeticsMapModel));
        });
        emit(CosmeticssListLoaded(_cosmeticsModelsList!));
      } else {
        emit(CosmeticsError('error'));
      }
    } on Exception catch (e) {
      emit(CosmeticsError(e.toString()));
    }
  }
}
