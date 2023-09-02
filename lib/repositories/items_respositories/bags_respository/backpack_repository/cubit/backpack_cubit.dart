import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:divar/packages/dio/dio.dart';
import 'package:divar/repositories/items_respositories/bags_respository/backpack_repository/models/backpack_model.dart';
import 'package:meta/meta.dart';

part 'backpack_state.dart';

class BackpackCubit extends Cubit<BackpackState> {
  late CancelToken _cancelToken = MyDio.cancelToken;
  late Response? _response = MyDio.response;
  late List<BackpackModel> backpackModelsList;

  BackpackCubit() : super(BackpackInitial()) {
    emitBackpackLoading();
  }

  void emitBackpackLoading() async {
    try {
      emit(BackpackLoading(true));
      emit(BackpackFetchingData());
      _cancelToken = CancelToken();
      Dio dio = Dio();
      _response = await dio.get('https://artadivar.com/api/show_backbag',
          cancelToken: _cancelToken);
      if (_response!.statusCode == 200) {
        emit(BackpackLoading(false));
        emit(BackpackLoaded(_response!.data.toString()));
      } else {
        emit(BackpackError('error'));
        emit(BackpackLoading(false));
      }
    } on Exception catch (e) {
      emit(BackpackError(e.toString()));
    }
  }
}

// Future<void> getBackpacksFromHost(int subCategory, Function(List) onSuccess,
//     Function(String) onFailure) async {
//   try {
//     if (response!.statusCode == 200) {
//       paginationModel = PaginationModel.fromMap(response!.data);
//       List homeApplianceCategoryItemsList = paginationModel.getPaginationData();
//       List<ItemModel> homeApplianceItemsModelsList = [];
//       for (var i = 0; i < homeApplianceCategoryItemsList.length; i++) {
//         if (subCategory != 13013) {
//           if (ItemModel.fromMap(homeApplianceCategoryItemsList[i])
//                   .getItemSubCategoryId() ==
//               subCategory) {
//             homeApplianceItemsModelsList
//                 .add(ItemModel.fromMap(homeApplianceCategoryItemsList[i]));
//           }
//         } else {
//           homeApplianceItemsModelsList
//               .add(ItemModel.fromMap(homeApplianceCategoryItemsList[i]));
//         }
//       }
//       try {
//         await getRandomAdvertisementFromHost((advertisementModel) {
//           homeApplianceItemsModelsList.add(advertisementModel);
//         }, (error) {});
//       } on Exception catch (e) {
//         debugPrint(e.toString());
//       }
//       onSuccess(homeApplianceItemsModelsList);
//     } else {
//       onFailure(LocaleKeys.error_on_load_data.tr());
//     }
//   } on DioError catch (e) {
//     if (e.type == DioErrorType.cancel) {
//       if (!cancelToken.isCancelled) {
//         cancelToken.cancel();
//       }
//       return;
//     }
//     if (e.type == DioErrorType.connectionTimeout ||
//         e.type == DioErrorType.receiveTimeout ||
//         e.type == DioErrorType.sendTimeout) {
//       onFailure('connection_timeout');
//       return;
//     }
//     onFailure(LocaleKeys.dio_error.tr());
//   } catch (e) {
//     onFailure(e.toString());
//   }
// }
