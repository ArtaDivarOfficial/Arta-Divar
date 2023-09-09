import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:divar/packages/dio/dio.dart';
import 'package:divar/repositories/items_respositories/technology_respository/computer_repository/constants/constants.dart';
import 'package:divar/repositories/items_respositories/technology_respository/computer_repository/models/computer_model.dart';
import 'package:divar/repositories/pagination_repository/models/pagination_model.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'computer_state.dart';

class ComputerCubit extends Cubit<ComputerState> {
  late Dio? _dio;
  late PaginationModel? _paginationModel;
  late CancelToken _cancelToken;
  late Response? _response;
  late List<ComputerModel>? _computerModelsList;

  ComputerCubit() : super(ComputerLoading()) {
    _dio = MyDio.getInstance();
    _cancelToken = MyDio.cancelToken;
    _computerModelsList = [];
  }

  void emitGetComputers() async {
    try {
      _computerModelsList = [];
      emit(ComputerLoading());
      emit(ComputerFetchingData());
      _cancelToken = CancelToken();
      _response = await _dio!.get(
          '${MyDio.baseAPIUrl}${ComputerConstants.apiShowAllComputer}',
          cancelToken: _cancelToken);
      if (_response!.statusCode == 200) {
        _paginationModel = PaginationModel.fromMap(_response!.data);
        List? computerItemsList = _paginationModel!.paginationData;
        computerItemsList?.forEach((computerMapModel) {
          // _computerModelsList!.add(ComputerModel.fromMapItemModel(computerMapModel));
        });
        emit(ComputersListLoaded(_computerModelsList!));
      } else {
        emit(ComputerError('error'));
      }
    } on Exception catch (e) {
      emit(ComputerError(e.toString()));
    }
  }
}
