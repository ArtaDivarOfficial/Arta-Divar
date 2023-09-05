import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:divar/packages/dio/dio.dart';
import 'package:divar/repositories/items_respositories/home_appliances_respository/constants/constants.dart';
import 'package:divar/repositories/items_respositories/home_appliances_respository/models/home_appliances_model.dart';
import 'package:divar/repositories/pagination_repository/models/pagination_model.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'home_appliances_state.dart';

class HomeAppliancesCubit extends Cubit<HomeAppliancesState> {
  late Dio? _dio;
  late PaginationModel? _paginationModel;
  late CancelToken _cancelToken;
  late Response? _response;
  late List<HomeAppliancesModel>? _cosmeticsModelsList;

  HomeAppliancesCubit() : super(HomeAppliancesLoading()) {
    _dio = MyDio.getInstance();
    _cancelToken = MyDio.cancelToken;
    _cosmeticsModelsList = [];
  }

  void emitGetHomeAppliancess() async {
    try {
      _cosmeticsModelsList = [];
      emit(HomeAppliancesLoading());
      emit(HomeAppliancesFetchingData());
      _cancelToken = CancelToken();
      _response = await _dio!.get(
          '${MyDio.baseAPIUrl}${HomeAppliancesConstants.apiShowAllHomeAppliances}',
          cancelToken: _cancelToken);
      if (_response!.statusCode == 200) {
        _paginationModel = PaginationModel.fromMap(_response!.data);
        List? cosmeticsItemsList = _paginationModel!.paginationData;
        cosmeticsItemsList?.forEach((cosmeticsMapModel) {
          // _cosmeticsModelsList!.add(HomeAppliancesModel.fromMapItemModel(cosmeticsMapModel));
        });
        emit(HomeAppliancessListLoaded(_cosmeticsModelsList!));
      } else {
        emit(HomeAppliancesError('error'));
      }
    } on Exception catch (e) {
      emit(HomeAppliancesError(e.toString()));
    }
  }
}
