import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:divar/packages/dio/dio.dart';
import 'package:divar/repositories/items_respositories/online_games_respository/constants/constants.dart';
import 'package:divar/repositories/items_respositories/online_games_respository/models/online_games_model.dart';
import 'package:divar/repositories/pagination_repository/models/pagination_model.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'online_games_state.dart';

class OnlineGamesCubit extends Cubit<OnlineGamesState> {
  late Dio? _dio;
  late PaginationModel? _paginationModel;
  late CancelToken _cancelToken;
  late Response? _response;
  late List<OnlineGamesModel>? _cosmeticsModelsList;

  OnlineGamesCubit() : super(OnlineGamesLoading()) {
    _dio = MyDio.getInstance();
    _cancelToken = MyDio.cancelToken;
    _cosmeticsModelsList = [];
  }

  void emitGetOnlineGamess() async {
    try {
      _cosmeticsModelsList = [];
      emit(OnlineGamesLoading());
      emit(OnlineGamesFetchingData());
      _cancelToken = CancelToken();
      _response = await _dio!.get(
          '${MyDio.baseAPIUrl}${OnlineGamesConstants.apiShowAllOnlineGames}',
          cancelToken: _cancelToken);
      if (_response!.statusCode == 200) {
        _paginationModel = PaginationModel.fromMap(_response!.data);
        List? cosmeticsItemsList = _paginationModel!.paginationData;
        cosmeticsItemsList?.forEach((cosmeticsMapModel) {
          // _cosmeticsModelsList!.add(OnlineGamesModel.fromMapItemModel(cosmeticsMapModel));
        });
        emit(OnlineGamessListLoaded(_cosmeticsModelsList!));
      } else {
        emit(OnlineGamesError('error'));
      }
    } on Exception catch (e) {
      emit(OnlineGamesError(e.toString()));
    }
  }
}
