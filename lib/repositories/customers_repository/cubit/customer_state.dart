part of 'customer_cubit.dart';

@immutable
abstract class CustomerState {}

class CustomerInitial extends CustomerState {}

class CustomerLoading extends CustomerState {}

class CustomerLoaded extends CustomerState {
  final CustomerModel customerModel;

  CustomerLoaded(this.customerModel);
}

class CustomerExists extends CustomerState {
  final bool isCustomerExists;

  CustomerExists(this.isCustomerExists);
}

class CustomerAdd extends CustomerState {}

class CustomerError extends CustomerState {
  final String error;

  CustomerError(this.error);
}

class CustomerUpdate extends CustomerState {}
