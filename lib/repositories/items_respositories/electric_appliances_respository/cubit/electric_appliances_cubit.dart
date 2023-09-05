import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:divar/packages/dio/dio.dart';
import 'package:divar/repositories/items_respositories/electric_appliances_respository/constants/constants.dart';
import 'package:divar/repositories/items_respositories/electric_appliances_respository/models/electric_appliances_model.dart';
import 'package:divar/repositories/pagination_repository/models/pagination_model.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'electric_appliances_state.dart';

class ElectricAppliancesCubit extends Cubit<ElectricAppliancesState> {
  late Dio? _dio;
  late PaginationModel? _paginationModel;
  late CancelToken _cancelToken;
  late Response? _response;
  late List<ElectricAppliancesModel>? _electricAppliancesModelsList;

  ElectricAppliancesCubit() : super(ElectricAppliancesLoading()) {
    _dio = MyDio.getInstance();
    _cancelToken = MyDio.cancelToken;
    _electricAppliancesModelsList = [];
  }

  void emitGetElectricAppliancess() async {
    try {
      _electricAppliancesModelsList = [];
      emit(ElectricAppliancesLoading());
      emit(ElectricAppliancesFetchingData());
      _cancelToken = CancelToken();
      _response = await _dio!.get(
          '${MyDio.baseAPIUrl}${ElectricAppliancesConstants.apiShowAllElectricApplianceses}',
          cancelToken: _cancelToken);
      if (_response!.statusCode == 200) {
        _paginationModel = PaginationModel.fromMap(_response!.data);
        List? electricAppliancesItemsList = _paginationModel!.paginationData;
        electricAppliancesItemsList?.forEach((electricAppliancesMapModel) {
          // _electricAppliancesModelsList!.add(ElectricAppliancesModel.fromMapItemModel(electricAppliancesMapModel));
        });
        emit(ElectricAppliancessListLoaded(_electricAppliancesModelsList!));
      } else {
        emit(ElectricAppliancesError('error'));
      }
    } on Exception catch (e) {
      emit(ElectricAppliancesError(e.toString()));
    }
  }
}
