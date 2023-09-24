// import 'package:bloc/bloc.dart';
// import 'package:dio/dio.dart';
// import 'package:divar/packages/dio/dio.dart';
// import 'package:divar/repositories/items_respositories/necessities_respository/models/necessity_model.dart';
// import 'package:divar/repositories/pagination_repository/models/pagination_model.dart';

// part 'necessity_state.dart';

// class NecessityCubit extends Cubit<NecessityState> {
//   late Dio? _dio;
//   late PaginationModel? _paginationModel;
//   late CancelToken _cancelToken;
//   late Response? _response;
//   late List<NecessityModel>? _necessityModelsList;

//   NecessityCubit() : super(NecessityLoading()) {
//     _dio = MyDio.getInstance();
//     _cancelToken = MyDio.cancelToken;
//     _necessityModelsList = [];
//   }

//   void emitGetNecessitys() async {
//     try {
//       _necessityModelsList = [];
//       emit(NecessityLoading());
//       emit(NecessityFetchingData());
//       _cancelToken = CancelToken();
//       _response = await _dio!.get(
//           '${MyDio.baseAPIUrl}${NecessityConstants.apiShowAllNecessitys}',
//           cancelToken: _cancelToken);
//       if (_response!.statusCode == 200) {
//         _paginationModel = PaginationModel.fromMap(_response!.data);
//         List? necessityItemsList = _paginationModel!.paginationData;
//         necessityItemsList?.forEach((necessityMapModel) {
//           _necessityModelsList!
//               .add(NecessityModel.fromMapItemModel(necessityMapModel));
//         });
//         print(_necessityModelsList!.length);
//         emit(NecessitysListLoaded(_necessityModelsList!));
//       } else {
//         emit(NecessityError('error'));
//       }
//     } on Exception catch (e) {
//       emit(NecessityError(e.toString()));
//     }
//   }
// }
