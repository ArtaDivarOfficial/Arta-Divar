import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:divar/packages/dio/dio.dart';
import 'package:divar/repositories/items_respositories/technology_respository/television_repository/constants/constants.dart';
import 'package:divar/repositories/items_respositories/technology_respository/television_repository/models/television_model.dart';
import 'package:divar/repositories/pagination_repository/models/pagination_model.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'television_state.dart';

class TelevisionCubit extends Cubit<TelevisionState> {
  late Dio? _dio;
  late PaginationModel? _paginationModel;
  late CancelToken _cancelToken;
  late Response? _response;
  late List<TelevisionModel>? _televisionModelsList;

  TelevisionCubit() : super(TelevisionLoading()) {
    _dio = MyDio.getInstance();
    _cancelToken = MyDio.cancelToken;
    _televisionModelsList = [];
  }

  void emitGetTelevisions() async {
    try {
      _televisionModelsList = [];
      emit(TelevisionLoading());
      emit(TelevisionFetchingData());
      _cancelToken = CancelToken();
      _response = await _dio!.get(
          '${MyDio.baseAPIUrl}${TelevisionConstants.apiShowAllTelevision}',
          cancelToken: _cancelToken);
      if (_response!.statusCode == 200) {
        _paginationModel = PaginationModel.fromMap(_response!.data);
        List? televisionItemsList = _paginationModel!.paginationData;
        televisionItemsList?.forEach((televisionMapModel) {
          // _televisionModelsList!.add(TelevisionModel.fromMapItemModel(televisionMapModel));
        });
        emit(TelevisionsListLoaded(_televisionModelsList!));
      } else {
        emit(TelevisionError('error'));
      }
    } on Exception catch (e) {
      emit(TelevisionError(e.toString()));
    }
  }
}
