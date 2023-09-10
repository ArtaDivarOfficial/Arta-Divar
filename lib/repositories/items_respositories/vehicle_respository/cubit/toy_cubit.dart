import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:divar/packages/dio/dio.dart';
import 'package:divar/repositories/items_respositories/toy_respository/constants/constants.dart';
import 'package:divar/repositories/items_respositories/toy_respository/models/toy_model.dart';
import 'package:divar/repositories/pagination_repository/models/pagination_model.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'toy_state.dart';

class ToyCubit extends Cubit<ToyState> {
  late Dio? _dio;
  late PaginationModel? _paginationModel;
  late CancelToken _cancelToken;
  late Response? _response;
  late List<ToyModel>? _toyModelsList;

  ToyCubit() : super(ToyLoading()) {
    _dio = MyDio.getInstance();
    _cancelToken = MyDio.cancelToken;
    _toyModelsList = [];
  }

  void emitGetToys() async {
    try {
      _toyModelsList = [];
      emit(ToyLoading());
      emit(ToyFetchingData());
      _cancelToken = CancelToken();
      _response = await _dio!.get(
          '${MyDio.baseAPIUrl}${ToyConstants.apiShowAllToy}',
          cancelToken: _cancelToken);
      if (_response!.statusCode == 200) {
        _paginationModel = PaginationModel.fromMap(_response!.data);
        List? toyItemsList = _paginationModel!.paginationData;
        toyItemsList?.forEach((toyMapModel) {
          // _toyModelsList!.add(ToyModel.fromMapItemModel(toyMapModel));
        });
        emit(ToysListLoaded(_toyModelsList!));
      } else {
        emit(ToyError('error'));
      }
    } on Exception catch (e) {
      emit(ToyError(e.toString()));
    }
  }
}
