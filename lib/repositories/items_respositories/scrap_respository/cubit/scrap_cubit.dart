import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:divar/packages/dio/dio.dart';
import 'package:divar/repositories/items_respositories/scrap_respository/constants/constants.dart';
import 'package:divar/repositories/items_respositories/scrap_respository/models/scrap_model.dart';
import 'package:divar/repositories/pagination_repository/models/pagination_model.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'scrap_state.dart';

class ScrapCubit extends Cubit<ScrapState> {
  late Dio? _dio;
  late PaginationModel? _paginationModel;
  late CancelToken _cancelToken;
  late Response? _response;
  late List<ScrapModel>? _scrapModelsList;

  ScrapCubit() : super(ScrapLoading()) {
    _dio = MyDio.getInstance();
    _cancelToken = MyDio.cancelToken;
    _scrapModelsList = [];
  }

  void emitGetScraps() async {
    try {
      _scrapModelsList = [];
      emit(ScrapLoading());
      emit(ScrapFetchingData());
      _cancelToken = CancelToken();
      _response = await _dio!.get(
          '${MyDio.baseAPIUrl}${ScrapConstants.apiShowAllScraps}',
          cancelToken: _cancelToken);
      if (_response!.statusCode == 200) {
        _paginationModel = PaginationModel.fromMap(_response!.data);
        List? scrapItemsList = _paginationModel!.paginationData;
        scrapItemsList?.forEach((scrapMapModel) {
          // _scrapModelsList!.add(ScrapModel.fromMapItemModel(scrapMapModel));
        });
        emit(ScrapsListLoaded(_scrapModelsList!));
      } else {
        emit(ScrapError('error'));
      }
    } on Exception catch (e) {
      emit(ScrapError(e.toString()));
    }
  }
}
