import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:meta/meta.dart';

part 'connectivity_plus_state.dart';

class ConnectivityPlusCubit extends Cubit<ConnectivityPlusState> {
  final Connectivity _connectivity = Connectivity();
  late StreamSubscription _streamSubscription;

  ConnectivityPlusCubit() : super(ConnectivityPlusInitial()) {
    emitConnectivityPlusLoading();
    _streamSubscription =
        _connectivity.onConnectivityChanged.listen((connectivityResult) {
      if (connectivityResult != ConnectivityResult.none) {
        emitConnectivityPlusConnected();
        return;
      }
      emitConnectivityPlusDisconnected();
    });
  }

  void emitConnectivityPlusLoading() => emit(ConnectivityPlusLoading());

  void emitConnectivityPlusConnected() => emit(ConnectivityPlusConnected());

  void emitConnectivityPlusDisconnected() =>
      emit(ConnectivityPlusDisconnected());

  @override
  Future<void> close() {
    _streamSubscription.cancel();
    return super.close();
  }
}
