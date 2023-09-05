import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:divar/packages/dio/dio.dart';
import 'package:divar/repositories/items_respositories/bags_respository/constants/constants.dart';
import 'package:divar/repositories/items_respositories/bags_respository/models/bag_model.dart';
import 'package:divar/repositories/items_respositories/item_repository/models/item_model.dart';
import 'package:divar/repositories/pagination_repository/models/pagination_model.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'bag_state.dart';

class BagCubit extends Cubit<BagState> {
  late Dio? _dio;
  late PaginationModel? _paginationModel;
  late CancelToken _cancelToken;
  late Response? _response;
  late List<BagModel>? _bagModelsList;

  BagCubit() : super(BagLoading()) {
    _dio = MyDio.getInstance();
    _cancelToken = MyDio.cancelToken;
    _bagModelsList = [];
  }

  void emitGetBags() async {
    try {
      _bagModelsList = [];
      emit(BagLoading());
      emit(BagFetchingData());
      _cancelToken = CancelToken();
      _response = await _dio!.get(
          '${MyDio.baseAPIUrl}${BagConstants.apiShowAllBags}',
          cancelToken: _cancelToken);
      if (_response!.statusCode == 200) {
        _paginationModel = PaginationModel.fromMap(_response!.data);
        List? bagItemsList = _paginationModel!.paginationData;
        bagItemsList?.forEach((bagMapModel) {
          _bagModelsList!.add(BagModel.fromMapItemModel(bagMapModel));
        });
        emit(BagsListLoaded(_bagModelsList!));
      } else {
        emit(BagError('error'));
      }
    } on Exception catch (e) {
      emit(BagError(e.toString()));
    }
  }
}
