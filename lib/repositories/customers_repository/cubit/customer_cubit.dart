import 'package:bloc/bloc.dart';
import 'package:divar/packages/firebase/constants/constants.dart';
import 'package:divar/packages/firebase/realtime_database/realtime_database.dart';
import 'package:divar/repositories/customers_repository/constants/constants.dart';
import 'package:divar/repositories/customers_repository/models/customer_model.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:meta/meta.dart';

part 'customer_state.dart';

class CustomerCubit extends Cubit<CustomerState> {
  late final DatabaseReference _databaseReference =
      FirebaseRealtimeDatabase.getInstance()!;
  CustomerModel customerModel = CustomerModel();

  CustomerCubit() : super(CustomerInitial());

  CustomerCubit.account(
      {required bool isSignIn, required String customerPhoneNumber})
      : super(CustomerInitial()) {
    emit(CustomerLoading());
    if (isSignIn) {
      emitCustomerSignIn(customerPhoneNumber: customerPhoneNumber);
      return;
    }
    emitCustomerSignUp(customerPhoneNumber: customerPhoneNumber);
  }

  Future<void> emitCustomerSignIn({required String customerPhoneNumber}) async {
    try {
      emit(CustomerLoading());
      var customers =
          await _databaseReference.child(FirebaseConstants.customers).get();
      if (customers.exists) {
        var customersMap = customers.value as Map;
        for (var map in customersMap.values) {
          if (map[CustomerConstants.customerPhoneNumber] ==
              customerPhoneNumber) {
            customerModel = CustomerModel.fromMap(map);
            emit(CustomerLoaded(customerModel));
            return;
          }
        }
      }
      emit(CustomerError('user_not_found'));
    } on Exception catch (error) {
      emit(CustomerError(error.toString()));
    }
  }

  Future<void> emitCustomerSignUp({required String customerPhoneNumber}) async {
    try {
      emit(CustomerLoading());
      var customers =
          await _databaseReference.child(FirebaseConstants.customers).get();
      if (customers.exists) {
        var customersMap = customers.value as Map;
        for (var map in customersMap.values) {
          if (map[CustomerConstants.customerPhoneNumber] ==
              customerPhoneNumber) {
            emit(CustomerExists(true));
            return;
          }
        }
      }
      emit(CustomerExists(false));
    } on Exception catch (error) {
      emit(CustomerError(error.toString()));
    }
  }

  Future<void> emitAddCustomerToFirebase(
      {required CustomerModel customerModel}) async {
    try {
      emit(CustomerLoading());
      await _databaseReference
          .child('${FirebaseConstants.customers}/${customerModel.customerId}')
          .set(customerModel.toMap());
      emit(CustomerAdd());
    } on Exception catch (error) {
      emit(CustomerError(error.toString()));
    }
  }

  Future<void> emitUpdateCustomerOnlineStatus(
      String customerId, bool onlineStatus) async {
    try {
      emit(CustomerLoading());
      await _databaseReference
          .child('${FirebaseConstants.customers}/$customerId/')
          .update({CustomerConstants.customerOnlineStatus: onlineStatus});
      emit(CustomerUpdate());
    } on Exception catch (error) {
      emit(CustomerError(error.toString()));
    }
  }

  Future<void> emitUpdateCustomerDeviceToken(
      String customerId, String deviceToken) async {
    try {
      emit(CustomerLoading());
      await _databaseReference
          .child('${FirebaseConstants.customers}/$customerId/')
          .update({CustomerConstants.customerDeviceToken: deviceToken});
      emit(CustomerUpdate());
    } on Exception catch (error) {
      emit(CustomerError(error.toString()));
    }
  }

  Future<String> emitGetCustomerDeviceToken(String customerId) async {
    try {
      emit(CustomerLoading());
      var customers = await _databaseReference
          .child('${FirebaseConstants.customers}/$customerId')
          .get();
      if (customers.exists) {
        return (customers.value as Map)[CustomerConstants.customerDeviceToken];
      }
      return '';
    } on Exception catch (error) {
      emit(CustomerError(error.toString()));
      return '';
    }
  }

  Future<void> emitUpdateCustomerProfileImage(
      String customerId, String profileImageUrl, int profileImageId) async {
    try {
      emit(CustomerLoading());
      await _databaseReference
          .child('${FirebaseConstants.customers}/$customerId/')
          .update({
        CustomerConstants.customerProfileImageUrl: profileImageUrl,
        CustomerConstants.customerProfileImageId: profileImageId,
      });
      emit(CustomerUpdate());
    } on Exception catch (error) {
      emit(CustomerError(error.toString()));
    }
  }

  Future<void> emitUpdateCustomerShowInformation(
      String customerId, bool customerShowInformationStatus) async {
    try {
      emit(CustomerLoading());
      await _databaseReference
          .child('${FirebaseConstants.customers}/$customerId/')
          .update({
        CustomerConstants.customerShowInformation:
            customerShowInformationStatus,
      });
      emit(CustomerUpdate());
    } on Exception catch (error) {
      emit(CustomerError(error.toString()));
    }
  }

  Future<String> emitGetCustomerShowInformation(String customerId) async {
    try {
      emit(CustomerLoading());
      var customers = await _databaseReference
          .child('${FirebaseConstants.customers}/$customerId')
          .get();
      if (customers.exists) {
        return (customers.value
            as Map)[CustomerConstants.customerShowInformation];
      }
      return '';
    } on Exception catch (error) {
      emit(CustomerError(error.toString()));
      return '';
    }
  }

  Future<String> emitGetCustomerPhoneNumber(String customerId) async {
    try {
      emit(CustomerLoading());
      var customers = await _databaseReference
          .child('${FirebaseConstants.customers}/$customerId')
          .get();
      if (customers.exists) {
        return (customers.value as Map)[CustomerConstants.customerPhoneNumber];
      }
      return '';
    } on Exception catch (error) {
      emit(CustomerError(error.toString()));
      return '';
    }
  }
}
