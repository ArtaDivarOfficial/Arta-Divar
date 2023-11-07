import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:divar/packages/dio/dio.dart';
import 'package:divar/repositories/my_advertisements_repository/constants/constants.dart';
import 'package:divar/repositories/my_advertisements_repository/models/my_advertisement_model.dart';
import 'package:divar/repositories/pagination_repository/models/pagination_model.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'my_advertisements_state.dart';

class MyAdvertisementsCubit extends Cubit<MyAdvertisementsState> {
  late Dio? _dio;
  late CancelToken _cancelToken;
  late Response? _response;
  late List<MyAdvertisementModel>? _myAdvertisementModelsList;

  MyAdvertisementsCubit() : super(MyAdvertisementsLoading()) {
    _dio = MyDio.getInstance();
    _cancelToken = MyDio.cancelToken;
    _myAdvertisementModelsList = [];
  }

  Future<void> emitGetMyAdvertisements({required String itemCustomerId}) async {
    _cancelToken = CancelToken();
    try {
      _myAdvertisementModelsList = [];
      emit(MyAdvertisementsLoading());
      emit(MyAdvertisementsFetchingData());
      FormData formData = FormData.fromMap(
          {MyAdvertisementsConstants.itemCustomerId: itemCustomerId});
      _response = await _dio!.post(
        '${MyDio.baseAPIUrl}${MyAdvertisementsConstants.apiShowMyAdvertisements}',
        options: Options(
          validateStatus: (status) => true,
        ),
        data: formData,
        cancelToken: _cancelToken,
      );
      print(_response!.data);
      if (_response!.statusCode == 200) {
        List? bagItemsMap = _response!.data['item_customer_id'] as List;
        for (var bagMapModel in bagItemsMap) {
          _myAdvertisementModelsList!
              .add(MyAdvertisementModel.fromMap(bagMapModel));
        }
        if (_myAdvertisementModelsList!.isEmpty) {
          emit(MyAdvertisementsEmpty());
          return;
        }
        emit(MyAdvertisementssListLoaded(_myAdvertisementModelsList!));
      } else {
        print(_response!.data);
        emit(MyAdvertisementsError('error'));
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
        print(_response!.data);
        emit(MyAdvertisementsError('connection_timeout'));
        return;
      }
      print(_response!.data);
      emit(MyAdvertisementsError('dio_error: $error'));
    } on Exception catch (error) {
      print(_response!.data);
      emit(MyAdvertisementsError('error: $error'));
    }
  }
}
