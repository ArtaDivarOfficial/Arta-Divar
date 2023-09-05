import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:divar/packages/dio/dio.dart';
import 'package:divar/repositories/items_respositories/estate_respository/constants/constants.dart';
import 'package:divar/repositories/items_respositories/estate_respository/models/estate_model.dart';
import 'package:divar/repositories/pagination_repository/models/pagination_model.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'estate_state.dart';

class EstateCubit extends Cubit<EstateState> {
  late Dio? _dio;
  late PaginationModel? _paginationModel;
  late CancelToken _cancelToken;
  late Response? _response;
  late List<EstateModel>? _cosmeticsModelsList;

  EstateCubit() : super(EstateLoading()) {
    _dio = MyDio.getInstance();
    _cancelToken = MyDio.cancelToken;
    _cosmeticsModelsList = [];
  }

  void emitGetEstates() async {
    try {
      _cosmeticsModelsList = [];
      emit(EstateLoading());
      emit(EstateFetchingData());
      _cancelToken = CancelToken();
      _response = await _dio!.get(
          '${MyDio.baseAPIUrl}${EstateConstants.apiShowAllEstatees}',
          cancelToken: _cancelToken);
      if (_response!.statusCode == 200) {
        _paginationModel = PaginationModel.fromMap(_response!.data);
        List? cosmeticsItemsList = _paginationModel!.paginationData;
        cosmeticsItemsList?.forEach((cosmeticsMapModel) {
          // _cosmeticsModelsList!.add(EstateModel.fromMapItemModel(cosmeticsMapModel));
        });
        emit(EstatesListLoaded(_cosmeticsModelsList!));
      } else {
        emit(EstateError('error'));
      }
    } on Exception catch (e) {
      emit(EstateError(e.toString()));
    }
  }
}
