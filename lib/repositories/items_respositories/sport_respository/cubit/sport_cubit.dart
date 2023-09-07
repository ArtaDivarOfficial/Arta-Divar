import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:divar/packages/dio/dio.dart';
import 'package:divar/repositories/items_respositories/sport_respository/constants/constants.dart';
import 'package:divar/repositories/items_respositories/sport_respository/models/sport_model.dart';
import 'package:divar/repositories/pagination_repository/models/pagination_model.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'sport_state.dart';

class SportCubit extends Cubit<SportState> {
  late Dio? _dio;
  late PaginationModel? _paginationModel;
  late CancelToken _cancelToken;
  late Response? _response;
  late List<SportModel>? _sportModelsList;

  SportCubit() : super(SportLoading()) {
    _dio = MyDio.getInstance();
    _cancelToken = MyDio.cancelToken;
    _sportModelsList = [];
  }

  void emitGetSports() async {
    try {
      _sportModelsList = [];
      emit(SportLoading());
      emit(SportFetchingData());
      _cancelToken = CancelToken();
      _response = await _dio!.get(
          '${MyDio.baseAPIUrl}${SportConstants.apiShowAllSport}',
          cancelToken: _cancelToken);
      if (_response!.statusCode == 200) {
        _paginationModel = PaginationModel.fromMap(_response!.data);
        List? sportItemsList = _paginationModel!.paginationData;
        sportItemsList?.forEach((sportMapModel) {
          // _sportModelsList!.add(SportModel.fromMapItemModel(sportMapModel));
        });
        emit(SportsListLoaded(_sportModelsList!));
      } else {
        emit(SportError('error'));
      }
    } on Exception catch (e) {
      emit(SportError(e.toString()));
    }
  }
}
