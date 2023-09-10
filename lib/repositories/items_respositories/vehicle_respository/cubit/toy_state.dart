part of 'toy_cubit.dart';

@immutable
abstract class ToyState {}

class ToyLoading extends ToyState {}

class ToyFetchingData extends ToyState {}

class ToysListLoaded extends ToyState {
  final List<ToyModel> toyModelsList;

  ToysListLoaded(this.toyModelsList);
}

class ToyItemLoaded extends ToyState {
  final ToyModel toyModel;

  ToyItemLoaded(this.toyModel);
}

class ToyEmpty extends ToyState {}

class ToyAdding extends ToyState {}

class ToyAdded extends ToyState {}

class ToyEditing extends ToyState {}

class ToyEditted extends ToyState {}

class ToyDeleting extends ToyState {}

class ToyDeleted extends ToyState {}

class ToySold extends ToyState {}

class ToyError extends ToyState {
  final String message;

  ToyError(this.message);
}
