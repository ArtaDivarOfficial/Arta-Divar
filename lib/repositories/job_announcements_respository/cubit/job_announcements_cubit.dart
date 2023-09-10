import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:divar/packages/dio/dio.dart';
import 'package:divar/repositories/job_announcements_respository/constants/constants.dart';
import 'package:divar/repositories/job_announcements_respository/models/job_announcements_model.dart';
import 'package:divar/repositories/pagination_repository/models/pagination_model.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'job_announcements_state.dart';

class JobAnnouncementsCubit extends Cubit<JobAnnouncementsState> {
  late Dio? _dio;
  late PaginationModel? _paginationModel;
  late CancelToken _cancelToken;
  late Response? _response;
  late List<JobAnnouncementModel>? _jobAnnouncementModelsList;

  JobAnnouncementsCubit() : super(JobAnnouncementsLoading()) {
    _dio = MyDio.getInstance();
    _cancelToken = MyDio.cancelToken;
    _jobAnnouncementModelsList = [];
  }

  void emitGetJobAnnouncementss() async {
    try {
      _jobAnnouncementModelsList = [];
      emit(JobAnnouncementsLoading());
      emit(JobAnnouncementsFetchingData());
      _cancelToken = CancelToken();
      _response = await _dio!.get(
          '${MyDio.baseAPIUrl}${JobAnnouncementsConstants.apiShowAllJobAnnouncementss}',
          cancelToken: _cancelToken);
      if (_response!.statusCode == 200) {
        _paginationModel = PaginationModel.fromMap(_response!.data);
        List? jobAnnouncementsItemsList = _paginationModel!.paginationData;
        jobAnnouncementsItemsList?.forEach((jobAnnouncementsMapModel) {
          _jobAnnouncementModelsList!.add(
              JobAnnouncementModel.fromMapItemModel(jobAnnouncementsMapModel));
        });
        emit(JobAnnouncementssListLoaded(_jobAnnouncementModelsList!));
      } else {
        emit(JobAnnouncementsError('error'));
      }
    } on Exception catch (e) {
      emit(JobAnnouncementsError(e.toString()));
    }
  }
}
