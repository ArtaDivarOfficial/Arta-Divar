part of 'sport_cubit.dart';

@immutable
abstract class SportState {}

class SportLoading extends SportState {}

class SportFetchingData extends SportState {}

class SportsListLoaded extends SportState {
  final List<SportModel> sportModelsList;

  SportsListLoaded(this.sportModelsList);
}

class SportItemLoaded extends SportState {
  final SportModel sportModel;

  SportItemLoaded(this.sportModel);
}

class SportEmpty extends SportState {}

class SportAdding extends SportState {}

class SportAdded extends SportState {}

class SportEditing extends SportState {}

class SportEditted extends SportState {}

class SportDeleting extends SportState {}

class SportDeleted extends SportState {}

class SportSold extends SportState {}

class SportError extends SportState {
  final String message;

  SportError(this.message);
}
