part of 'backpack_cubit.dart';

@immutable
abstract class BackpackState {}

class BackpackInitial extends BackpackState {}

class BackpackLoading extends BackpackState {
  final bool isLoading;

  BackpackLoading(this.isLoading);
}

class BackpackFetchingData extends BackpackState {}

class BackpackLoaded extends BackpackState {
  // final List<BackpackModel> backpackModelsList;
  final String backpackModelsList;

  BackpackLoaded(this.backpackModelsList);
}

class BackpackError extends BackpackState {
  final String message;

  BackpackError(this.message);
}

class BackpackEmpty extends BackpackState {}
