part of 'connectivity_plus_cubit.dart';

@immutable
abstract class ConnectivityPlusState {}

class ConnectivityPlusInitial extends ConnectivityPlusState {}

class ConnectivityPlusLoading extends ConnectivityPlusState {}

class ConnectivityPlusConnected extends ConnectivityPlusState {}

class ConnectivityPlusDisconnected extends ConnectivityPlusState {}
