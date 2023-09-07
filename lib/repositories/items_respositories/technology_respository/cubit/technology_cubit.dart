import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:divar/packages/dio/dio.dart';
import 'package:divar/repositories/items_respositories/technology_respository/constants/constants.dart';
import 'package:divar/repositories/items_respositories/technology_respository/models/technology_model.dart';
import 'package:divar/repositories/pagination_repository/models/pagination_model.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'technology_state.dart';

class TechnologyCubit extends Cubit<TechnologyState> {
  late Dio? _dio;
  late PaginationModel? _paginationModel;
  late CancelToken _cancelToken;
  late Response? _response;
  late List<TechnologyModel>? _technologyModelsList;

  TechnologyCubit() : super(TechnologyLoading()) {
    _dio = MyDio.getInstance();
    _cancelToken = MyDio.cancelToken;
    _technologyModelsList = [];
  }

  void emitGetTechnologys() async {
    try {
      _technologyModelsList = [];
      emit(TechnologyLoading());
      emit(TechnologyFetchingData());
      _cancelToken = CancelToken();
      _response = await _dio!.get(
          '${MyDio.baseAPIUrl}${TechnologyConstants.apiShowAllTechnology}',
          cancelToken: _cancelToken);
      if (_response!.statusCode == 200) {
        _paginationModel = PaginationModel.fromMap(_response!.data);
        List? technologyItemsList = _paginationModel!.paginationData;
        technologyItemsList?.forEach((technologyMapModel) {
          // _technologyModelsList!.add(TechnologyModel.fromMapItemModel(technologyMapModel));
        });
        emit(TechnologysListLoaded(_technologyModelsList!));
      } else {
        emit(TechnologyError('error'));
      }
    } on Exception catch (e) {
      emit(TechnologyError(e.toString()));
    }
  }
}
