part of 'stationary_cubit.dart';

@immutable
abstract class StationaryState {}

class StationaryLoading extends StationaryState {}

class StationaryFetchingData extends StationaryState {}

class StationarysListLoaded extends StationaryState {
  final List<StationaryModel> stationaryModelsList;

  StationarysListLoaded(this.stationaryModelsList);
}

class StationaryItemLoaded extends StationaryState {
  final StationaryModel stationaryModel;

  StationaryItemLoaded(this.stationaryModel);
}

class StationaryEmpty extends StationaryState {}

class StationaryAdding extends StationaryState {}

class StationaryAdded extends StationaryState {}

class StationaryEditing extends StationaryState {}

class StationaryEditted extends StationaryState {}

class StationaryDeleting extends StationaryState {}

class StationaryDeleted extends StationaryState {}

class StationarySold extends StationaryState {}

class StationaryError extends StationaryState {
  final String message;

  StationaryError(this.message);
}
