part of 'estate_cubit.dart';

@immutable
abstract class EstateState {}

class EstateLoading extends EstateState {}

class EstateFetchingData extends EstateState {}

class EstatesListLoaded extends EstateState {
  final List<EstateModel> estateModelsList;

  EstatesListLoaded(this.estateModelsList);
}

class EstateItemLoaded extends EstateState {
  final EstateModel estateModel;

  EstateItemLoaded(this.estateModel);
}

class EstateEmpty extends EstateState {}

class EstateAdding extends EstateState {}

class EstateAdded extends EstateState {}

class EstateEditing extends EstateState {}

class EstateEditted extends EstateState {}

class EstateDeleting extends EstateState {}

class EstateDeleted extends EstateState {}

class EstateSold extends EstateState {}

class EstateError extends EstateState {
  final String message;

  EstateError(this.message);
}
