import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:divar/packages/dio/dio.dart';
import 'package:divar/repositories/items_respositories/clothing_respository/constants/constants.dart';
import 'package:divar/repositories/items_respositories/clothing_respository/models/clothing_model.dart';
import 'package:divar/repositories/pagination_repository/models/pagination_model.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'clothing_state.dart';

class ClothingCubit extends Cubit<ClothingState> {
  late Dio? _dio;
  late PaginationModel? _paginationModel;
  late CancelToken _cancelToken;
  late Response? _response;
  late List<ClothingModel>? _clothingModelsList;

  ClothingCubit() : super(ClothingLoading()) {
    _dio = MyDio.getInstance();
    _cancelToken = MyDio.cancelToken;
    _clothingModelsList = [];
  }

  void emitGetClothings() async {
    try {
      _clothingModelsList = [];
      emit(ClothingLoading());
      emit(ClothingFetchingData());
      _cancelToken = CancelToken();
      _response = await _dio!.get(
          '${MyDio.baseAPIUrl}${ClothingConstants.apiShowAllClothings}',
          cancelToken: _cancelToken);
      if (_response!.statusCode == 200) {
        _paginationModel = PaginationModel.fromMap(_response!.data);
        List? clothingItemsList = _paginationModel!.paginationData;
        clothingItemsList?.forEach((clothingMapModel) {
          // _clothingModelsList!.add(ClothingModel.fromMapItemModel(clothingMapModel));
        });
        emit(ClothingsListLoaded(_clothingModelsList!));
      } else {
        emit(ClothingError('error'));
      }
    } on Exception catch (e) {
      emit(ClothingError(e.toString()));
    }
  }
}
