import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:divar/constants/variables.dart';
import 'package:divar/packages/dio/dio.dart';
import 'package:divar/repositories/items_respositories/bags_respository/constants/constants.dart';
import 'package:divar/repositories/items_respositories/bags_respository/models/bag_model.dart';
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

  Future<void> emitAddBag() async {
    _cancelToken = CancelToken();
    try {
      emit(BagAdding());
      BagModel bagModel = Variables.itemModel as BagModel;
      FormData formData = FormData.fromMap({
        BagConstants.itemCustomerId: bagModel.itemCustomerId,
        BagConstants.itemCategoryId: bagModel.itemCategoryId,
        BagConstants.itemSubCategoryId: bagModel.itemSubCategoryId,
        BagConstants.itemTitle: bagModel.itemTitle,
        'item_address': 'province',
        BagConstants.itemProvince: bagModel.itemProvince,
        BagConstants.itemRegion: bagModel.itemRegion,
        BagConstants.itemTotalPrice: bagModel.itemTotalPrice,
        BagConstants.itemPriceType: bagModel.itemPriceType,
        BagConstants.itemSalePriceType: bagModel.itemSalePriceType,
        BagConstants.itemDiscountAmount: bagModel.itemDiscountAmount,
        'item_discount_amount_type': -1,
        BagConstants.itemType: bagModel.itemType,
        BagConstants.itemMaterial: bagModel.itemMaterial,
        BagConstants.itemDescription: bagModel.itemDescription,
        BagConstants.itemStatus: bagModel.itemStatus,
      });
      for (var item in bagModel.itemImages!) {
        formData.files.addAll([
          MapEntry('${BagConstants.itemImages}[]',
              await MultipartFile.fromFile(item)),
        ]);
      }
      _response = await _dio!.post(
        '${MyDio.baseAPIUrl}${BagConstants.apiAddBag}',
        data: formData,
        options: Options(
          validateStatus: (status) => true,
        ),
        cancelToken: _cancelToken,
      );
      print(_response!.data);
      if (_response!.statusCode == 200) {
        emit(BagAdded());
      } else {
        emit(BagError('error'));
      }
    } on DioException catch (error) {
      if (error.type == DioExceptionType.cancel) {
        if (!_cancelToken.isCancelled) {
          _cancelToken.cancel();
        }
        return;
      }
      if (error.type == DioExceptionType.connectionTimeout ||
          error.type == DioExceptionType.receiveTimeout ||
          error.type == DioExceptionType.sendTimeout) {
        emit(BagError('connection_timeout'));
        return;
      }
      emit(BagError('dio_error: $error'));
    } on Exception catch (error) {
      emit(BagError('error: $error'));
    }
  }

  Future<void> emitGetBagByItemId(int bagItemId) async {
    _cancelToken = CancelToken();
    try {
      emit(BagLoading());
      emit(BagFetchingData());
      _response = await _dio!.get(
        '${MyDio.baseAPIUrl}${BagConstants.apiShowBagDetails}/$bagItemId',
        cancelToken: _cancelToken,
      );
      if (_response!.statusCode == 200) {
        emit(BagItemLoaded(BagModel.fromMap(_response!.data)));
      } else {
        emit(BagError('error'));
      }
    } on DioException catch (error) {
      if (error.type == DioExceptionType.cancel) {
        if (!_cancelToken.isCancelled) {
          _cancelToken.cancel();
        }
        return;
      }
      if (error.type == DioExceptionType.connectionTimeout ||
          error.type == DioExceptionType.receiveTimeout ||
          error.type == DioExceptionType.sendTimeout) {
        emit(BagError('connection_timeout'));
        return;
      }
      emit(BagError('dio_error: $error'));
    } on Exception catch (error) {
      emit(BagError('error: $error'));
    }
  }

  Future<void> emitGetBags() async {
    _cancelToken = CancelToken();
    try {
      _bagModelsList = [];
      emit(BagLoading());
      emit(BagFetchingData());
      _response = await _dio!.get(
        '${MyDio.baseAPIUrl}${BagConstants.apiShowAllBags}',
        cancelToken: _cancelToken,
      );
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
    } on DioException catch (error) {
      if (error.type == DioExceptionType.cancel) {
        if (!_cancelToken.isCancelled) {
          _cancelToken.cancel();
        }
        return;
      }
      if (error.type == DioExceptionType.connectionTimeout ||
          error.type == DioExceptionType.receiveTimeout ||
          error.type == DioExceptionType.sendTimeout) {
        emit(BagError('connection_timeout'));
        return;
      }
      emit(BagError('dio_error: $error'));
    } on Exception catch (error) {
      emit(BagError('error: $error'));
    }
  }

  Future<void> emitDeleteBag(int bagItemId) async {
    _cancelToken = CancelToken();
    try {
      emit(BagDeleting());
      _response = await _dio!.delete(
        '${MyDio.baseAPIUrl}${BagConstants.apiDeleteBag}/$bagItemId',
        cancelToken: _cancelToken,
      );
      if (_response!.statusCode == 200) {
        emit(BagDeleted());
      } else {
        emit(BagError('error'));
      }
    } on DioException catch (error) {
      if (error.type == DioExceptionType.cancel) {
        if (!_cancelToken.isCancelled) {
          _cancelToken.cancel();
        }
        return;
      }
      if (error.type == DioExceptionType.connectionTimeout ||
          error.type == DioExceptionType.receiveTimeout ||
          error.type == DioExceptionType.sendTimeout) {
        emit(BagError('connection_timeout'));
        return;
      }
      emit(BagError('dio_error: $error'));
    } on Exception catch (error) {
      emit(BagError('error: $error'));
    }
  }

  Future<void> emitEditBag(List itemImagesList, int bagItemId) async {
    _cancelToken = CancelToken();
    try {
      emit(BagEditing());
      FormData formData = FormData.fromMap({
        BagConstants.itemCustomerId: '12',
        BagConstants.itemCategoryId: 1,
        BagConstants.itemSubCategoryId: 1,
        BagConstants.itemTitle: 'title2',
        'item_address': 'province2',
        BagConstants.itemProvince: 10,
        BagConstants.itemRegion: 'region2',
        BagConstants.itemTotalPrice: 1000,
        BagConstants.itemPriceType: 1,
        BagConstants.itemSalePriceType: 1,
        BagConstants.itemDiscountAmount: -1,
        'item_discount_amount_type': -1,
        BagConstants.itemType: 1,
        BagConstants.itemMaterial: 'material2',
        BagConstants.itemDescription: 'description2',
        BagConstants.itemStatus: 1,
      });
      for (var item in itemImagesList) {
        formData.files.addAll([
          MapEntry('${BagConstants.itemImages}[]',
              await MultipartFile.fromFile(item)),
        ]);
      }
      _response = await _dio!.post(
        '${MyDio.baseAPIUrl}${BagConstants.apiEditBag}/$bagItemId',
        data: formData,
        cancelToken: _cancelToken,
      );
      if (_response!.statusCode == 200) {
        emit(BagEditted());
      } else {
        emit(BagError('error'));
      }
    } on DioException catch (error) {
      if (error.type == DioExceptionType.cancel) {
        if (!_cancelToken.isCancelled) {
          _cancelToken.cancel();
        }
        return;
      }
      if (error.type == DioExceptionType.connectionTimeout ||
          error.type == DioExceptionType.receiveTimeout ||
          error.type == DioExceptionType.sendTimeout) {
        emit(BagError('connection_timeout'));
        return;
      }
      emit(BagError('dio_error: $error'));
    } on Exception catch (error) {
      emit(BagError('error: $error'));
    }
  }

  Future<void> emitSoldBag(int bagItemId) async {
    _cancelToken = CancelToken();
    try {
      emit(BagSell());
      _response = await _dio!.get(
        '${MyDio.baseAPIUrl}${BagConstants.apiSoldBag}/$bagItemId',
        cancelToken: _cancelToken,
      );
      if (_response!.statusCode == 200) {
        emit(BagSold());
      } else {
        emit(BagError('error'));
      }
    } on DioException catch (error) {
      if (error.type == DioExceptionType.cancel) {
        if (!_cancelToken.isCancelled) {
          _cancelToken.cancel();
        }
        return;
      }
      if (error.type == DioExceptionType.connectionTimeout ||
          error.type == DioExceptionType.receiveTimeout ||
          error.type == DioExceptionType.sendTimeout) {
        emit(BagError('connection_timeout'));
        return;
      }
      emit(BagError('dio_error: $error'));
    } on Exception catch (error) {
      emit(BagError('error: $error'));
    }
  }

  Future<void> emitSearchBags(String searchText) async {
    _cancelToken = CancelToken();
    try {
      _bagModelsList = [];
      emit(BagLoading());
      emit(BagFetchingData());
      FormData formData =
          FormData.fromMap({BagConstants.itemTitle: searchText});
      _response = await _dio!.post(
        '${MyDio.baseAPIUrl}${BagConstants.apiSearchBag}',
        data: formData,
        cancelToken: _cancelToken,
      );
      if (_response!.statusCode == 200) {
        List? bagItemsList = (_response!.data as List).reversed.toList();
        for (var bagModel in bagItemsList) {
          _bagModelsList!.add(BagModel.fromMapItemModel(bagModel));
        }
        emit(BagsListLoaded(_bagModelsList!));
      } else {
        emit(BagError('error'));
      }
    } on DioException catch (error) {
      if (error.type == DioExceptionType.cancel) {
        if (!_cancelToken.isCancelled) {
          _cancelToken.cancel();
        }
        return;
      }
      if (error.type == DioExceptionType.connectionTimeout ||
          error.type == DioExceptionType.receiveTimeout ||
          error.type == DioExceptionType.sendTimeout) {
        emit(BagError('connection_timeout'));
        return;
      }
      emit(BagError('dio_error: $error'));
    } on Exception catch (error) {
      emit(BagError('error: $error'));
    }
  }
}
