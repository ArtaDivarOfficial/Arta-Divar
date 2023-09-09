import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:divar/packages/dio/dio.dart';
import 'package:divar/repositories/items_respositories/technology_respository/mobile_repository/constants/constants.dart';
import 'package:divar/repositories/items_respositories/technology_respository/mobile_repository/models/mobile_model.dart';
import 'package:divar/repositories/pagination_repository/models/pagination_model.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'mobile_state.dart';

class MobileCubit extends Cubit<MobileState> {
  late Dio? _dio;
  late PaginationModel? _paginationModel;
  late CancelToken _cancelToken;
  late Response? _response;
  late List<MobileModel>? _mobileModelsList;

  MobileCubit() : super(MobileLoading()) {
    _dio = MyDio.getInstance();
    _cancelToken = MyDio.cancelToken;
    _mobileModelsList = [];
  }

  void emitGetMobiles() async {
    try {
      _mobileModelsList = [];
      emit(MobileLoading());
      emit(MobileFetchingData());
      _cancelToken = CancelToken();
      _response = await _dio!.get(
          '${MyDio.baseAPIUrl}${MobileConstants.apiShowAllMobile}',
          cancelToken: _cancelToken);
      if (_response!.statusCode == 200) {
        _paginationModel = PaginationModel.fromMap(_response!.data);
        List? mobileItemsList = _paginationModel!.paginationData;
        mobileItemsList?.forEach((mobileMapModel) {
          // _mobileModelsList!.add(MobileModel.fromMapItemModel(mobileMapModel));
        });
        emit(MobilesListLoaded(_mobileModelsList!));
      } else {
        emit(MobileError('error'));
      }
    } on Exception catch (e) {
      emit(MobileError(e.toString()));
    }
  }
}
