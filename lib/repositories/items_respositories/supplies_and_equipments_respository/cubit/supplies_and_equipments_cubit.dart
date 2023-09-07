import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:divar/packages/dio/dio.dart';
import 'package:divar/repositories/items_respositories/supplies_and_equipments_respository/constants/constants.dart';
import 'package:divar/repositories/items_respositories/supplies_and_equipments_respository/models/supplies_and_equipments_model.dart';
import 'package:divar/repositories/pagination_repository/models/pagination_model.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'supplies_and_equipments_state.dart';

class SuppliesAndEquipmentsCubit extends Cubit<SuppliesAndEquipmentsState> {
  late Dio? _dio;
  late PaginationModel? _paginationModel;
  late CancelToken _cancelToken;
  late Response? _response;
  late List<SuppliesAndEquipmentsModel>? _suppliesAndEquipmentsModelsList;

  SuppliesAndEquipmentsCubit() : super(SuppliesAndEquipmentsLoading()) {
    _dio = MyDio.getInstance();
    _cancelToken = MyDio.cancelToken;
    _suppliesAndEquipmentsModelsList = [];
  }

  void emitGetSuppliesAndEquipmentss() async {
    try {
      _suppliesAndEquipmentsModelsList = [];
      emit(SuppliesAndEquipmentsLoading());
      emit(SuppliesAndEquipmentsFetchingData());
      _cancelToken = CancelToken();
      _response = await _dio!.get(
          '${MyDio.baseAPIUrl}${SuppliesAndEquipmentsConstants.apiShowAllSuppliesAndEquipments}',
          cancelToken: _cancelToken);
      if (_response!.statusCode == 200) {
        _paginationModel = PaginationModel.fromMap(_response!.data);
        List? suppliesAndEquipmentsItemsList = _paginationModel!.paginationData;
        suppliesAndEquipmentsItemsList
            ?.forEach((suppliesAndEquipmentsMapModel) {
          // _suppliesAndEquipmentsModelsList!.add(SuppliesAndEquipmentsModel.fromMapItemModel(suppliesAndEquipmentsMapModel));
        });
        emit(SuppliesAndEquipmentssListLoaded(
            _suppliesAndEquipmentsModelsList!));
      } else {
        emit(SuppliesAndEquipmentsError('error'));
      }
    } on Exception catch (e) {
      emit(SuppliesAndEquipmentsError(e.toString()));
    }
  }
}
