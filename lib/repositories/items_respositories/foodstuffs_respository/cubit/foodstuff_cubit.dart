import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:divar/packages/dio/dio.dart';
import 'package:divar/repositories/items_respositories/foodstuffs_respository/constants/constants.dart';
import 'package:divar/repositories/items_respositories/foodstuffs_respository/models/foodstuff_model.dart';
import 'package:divar/repositories/pagination_repository/models/pagination_model.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'foodstuff_state.dart';

class FoodstuffCubit extends Cubit<FoodstuffState> {
  late Dio? _dio;
  late PaginationModel? _paginationModel;
  late CancelToken _cancelToken;
  late Response? _response;
  late List<FoodstuffModel>? _foodstuffModelsList;

  FoodstuffCubit() : super(FoodstuffLoading()) {
    _dio = MyDio.getInstance();
    _cancelToken = MyDio.cancelToken;
    _foodstuffModelsList = [];
  }

  void emitGetFoodstuffs() async {
    try {
      _foodstuffModelsList = [];
      emit(FoodstuffLoading());
      emit(FoodstuffFetchingData());
      _cancelToken = CancelToken();
      _response = await _dio!.get(
          '${MyDio.baseAPIUrl}${FoodstuffsConstants.apiShowAllFoodstuffs}',
          cancelToken: _cancelToken);
      if (_response!.statusCode == 200) {
        _paginationModel = PaginationModel.fromMap(_response!.data);
        List? foodstuffItemsList = _paginationModel!.paginationData;
        foodstuffItemsList?.forEach((foodstuffMapModel) {
          _foodstuffModelsList!
              .add(FoodstuffModel.fromMapItemModel(foodstuffMapModel));
        });
        emit(FoodstuffsListLoaded(_foodstuffModelsList!));
      } else {
        emit(FoodstuffError('error'));
      }
    } on Exception catch (e) {
      emit(FoodstuffError(e.toString()));
    }
  }
}
