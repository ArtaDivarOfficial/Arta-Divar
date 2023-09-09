part of 'computer_cubit.dart';

@immutable
abstract class ComputerState {}

class ComputerLoading extends ComputerState {}

class ComputerFetchingData extends ComputerState {}

class ComputersListLoaded extends ComputerState {
  final List<ComputerModel> computerModelsList;

  ComputersListLoaded(this.computerModelsList);
}

class ComputerItemLoaded extends ComputerState {
  final ComputerModel computerModel;

  ComputerItemLoaded(this.computerModel);
}

class ComputerEmpty extends ComputerState {}

class ComputerAdding extends ComputerState {}

class ComputerAdded extends ComputerState {}

class ComputerEditing extends ComputerState {}

class ComputerEditted extends ComputerState {}

class ComputerDeleting extends ComputerState {}

class ComputerDeleted extends ComputerState {}

class ComputerSold extends ComputerState {}

class ComputerError extends ComputerState {
  final String message;

  ComputerError(this.message);
}
