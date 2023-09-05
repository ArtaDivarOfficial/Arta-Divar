import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:divar/packages/dio/dio.dart';
import 'package:divar/repositories/items_respositories/business_repository/constants/constants.dart';
import 'package:divar/repositories/items_respositories/business_repository/models/business_model.dart';
import 'package:divar/repositories/items_respositories/item_repository/models/item_model.dart';
import 'package:divar/repositories/pagination_repository/models/pagination_model.dart';
import 'package:meta/meta.dart';

part 'business_state.dart';

class BusinessCubit extends Cubit<BusinessState> {
  late Dio? _dio;
  late PaginationModel? _paginationModel;
  late CancelToken _cancelToken;
  late Response? _response;
  late List<BusinessModel>? _businessModelsList;

  BusinessCubit() : super(BusinessLoading()) {
    _dio = MyDio.getInstance();
    _cancelToken = MyDio.cancelToken;
    _businessModelsList = [];
  }

  void emitGetBusinesss() async {
    try {
      _businessModelsList = [];
      emit(BusinessLoading());
      emit(BusinessFetchingData());
      _cancelToken = CancelToken();
      _response = await _dio!.get(
          '${MyDio.baseAPIUrl}${BusinessConstants.apiShowAllBusinesses}',
          cancelToken: _cancelToken);
      if (_response!.statusCode == 200) {
        _paginationModel = PaginationModel.fromMap(_response!.data);
        List? businessItemsList = _paginationModel!.paginationData;
        businessItemsList?.forEach((businessMapModel) {
          // _businessModelsList!.add(BusinessModel.fromMap(businessMapModel));
        });
        emit(BusinessesListLoaded(_businessModelsList!));
      } else {
        emit(BusinessError('error'));
      }
    } on Exception catch (e) {
      emit(BusinessError(e.toString()));
    }
  }
}
