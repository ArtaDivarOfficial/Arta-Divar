import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:divar/packages/dio/dio.dart';
import 'package:divar/repositories/items_respositories/stationary_respository/constants/constants.dart';
import 'package:divar/repositories/items_respositories/stationary_respository/models/stationary_model.dart';
import 'package:divar/repositories/pagination_repository/models/pagination_model.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'stationary_state.dart';

class StationaryCubit extends Cubit<StationaryState> {
  late Dio? _dio;
  late PaginationModel? _paginationModel;
  late CancelToken _cancelToken;
  late Response? _response;
  late List<StationaryModel>? _stationaryModelsList;

  StationaryCubit() : super(StationaryLoading()) {
    _dio = MyDio.getInstance();
    _cancelToken = MyDio.cancelToken;
    _stationaryModelsList = [];
  }

  void emitGetStationarys() async {
    try {
      _stationaryModelsList = [];
      emit(StationaryLoading());
      emit(StationaryFetchingData());
      _cancelToken = CancelToken();
      _response = await _dio!.get(
          '${MyDio.baseAPIUrl}${StationaryConstants.apiShowAllStationary}',
          cancelToken: _cancelToken);
      if (_response!.statusCode == 200) {
        _paginationModel = PaginationModel.fromMap(_response!.data);
        List? stationaryItemsList = _paginationModel!.paginationData;
        stationaryItemsList?.forEach((stationaryMapModel) {
          // _stationaryModelsList!.add(StationaryModel.fromMapItemModel(stationaryMapModel));
        });
        emit(StationarysListLoaded(_stationaryModelsList!));
      } else {
        emit(StationaryError('error'));
      }
    } on Exception catch (e) {
      emit(StationaryError(e.toString()));
    }
  }
}
