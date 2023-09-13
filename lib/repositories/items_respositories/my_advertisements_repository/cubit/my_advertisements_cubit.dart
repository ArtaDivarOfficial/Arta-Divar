import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:divar/packages/dio/dio.dart';
import 'package:divar/repositories/items_respositories/my_advertisements_repository/constants/constants.dart';
import 'package:divar/repositories/items_respositories/my_advertisements_repository/models/my_advertisement_model.dart';
import 'package:divar/repositories/pagination_repository/models/pagination_model.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'my_advertisements_state.dart';

class MyAdvertisementsCubit extends Cubit<MyAdvertisementsState> {
  late Dio? _dio;
  late PaginationModel? _paginationModel;
  late CancelToken _cancelToken;
  late Response? _response;
  late List<MyAdvertisementModel>? _myAdvertisementModelsList;

  MyAdvertisementsCubit() : super(MyAdvertisementsLoading()) {
    _dio = MyDio.getInstance();
    _cancelToken = MyDio.cancelToken;
    _myAdvertisementModelsList = [];
  }

  void emitGetMyAdvertisementss() async {
    try {
      _myAdvertisementModelsList = [];
      emit(MyAdvertisementsLoading());
      emit(MyAdvertisementsFetchingData());
      _cancelToken = CancelToken();
      _response = await _dio!.get(
          '${MyDio.baseAPIUrl}${MyAdvertisementsConstants.apiShowAllMyAdvertisements}',
          cancelToken: _cancelToken);
      if (_response!.statusCode == 200) {
        _paginationModel = PaginationModel.fromMap(_response!.data);
        List? myAdvertisementItemsList = _paginationModel!.paginationData;
        myAdvertisementItemsList?.forEach((myAdvertisementMapModel) {
          // _myAdvertisementModelsList!.add(MyAdvertisementsModel.fromMapItemModel(myAdvertisementMapModel));
        });
        emit(MyAdvertisementssListLoaded(_myAdvertisementModelsList!));
      } else {
        emit(MyAdvertisementsError('error'));
      }
    } on Exception catch (e) {
      emit(MyAdvertisementsError(e.toString()));
    }
  }
}
