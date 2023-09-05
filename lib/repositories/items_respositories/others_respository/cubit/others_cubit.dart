import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:divar/packages/dio/dio.dart';
import 'package:divar/repositories/items_respositories/others_respository/constants/constants.dart';
import 'package:divar/repositories/items_respositories/others_respository/models/others_model.dart';
import 'package:divar/repositories/pagination_repository/models/pagination_model.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'others_state.dart';

class OthersCubit extends Cubit<OthersState> {
  late Dio? _dio;
  late PaginationModel? _paginationModel;
  late CancelToken _cancelToken;
  late Response? _response;
  late List<OthersModel>? _othersModelsList;

  OthersCubit() : super(OthersLoading()) {
    _dio = MyDio.getInstance();
    _cancelToken = MyDio.cancelToken;
    _othersModelsList = [];
  }

  void emitGetOtherss() async {
    try {
      _othersModelsList = [];
      emit(OthersLoading());
      emit(OthersFetchingData());
      _cancelToken = CancelToken();
      _response = await _dio!.get(
          '${MyDio.baseAPIUrl}${OthersConstants.apiShowAllOthers}',
          cancelToken: _cancelToken);
      if (_response!.statusCode == 200) {
        _paginationModel = PaginationModel.fromMap(_response!.data);
        List? othersItemsList = _paginationModel!.paginationData;
        othersItemsList?.forEach((othersMapModel) {
          // _othersModelsList!.add(OthersModel.fromMapItemModel(othersMapModel));
        });
        emit(OtherssListLoaded(_othersModelsList!));
      } else {
        emit(OthersError('error'));
      }
    } on Exception catch (e) {
      emit(OthersError(e.toString()));
    }
  }
}
