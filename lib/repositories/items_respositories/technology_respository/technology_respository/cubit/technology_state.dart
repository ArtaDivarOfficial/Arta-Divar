part of 'technology_cubit.dart';

@immutable
abstract class TechnologyState {}

class TechnologyLoading extends TechnologyState {}

class TechnologyFetchingData extends TechnologyState {}

class TechnologysListLoaded extends TechnologyState {
  final List<TechnologyModel> technologyModelsList;

  TechnologysListLoaded(this.technologyModelsList);
}

class TechnologyItemLoaded extends TechnologyState {
  final TechnologyModel technologyModel;

  TechnologyItemLoaded(this.technologyModel);
}

class TechnologyEmpty extends TechnologyState {}

class TechnologyAdding extends TechnologyState {}

class TechnologyAdded extends TechnologyState {}

class TechnologyEditing extends TechnologyState {}

class TechnologyEditted extends TechnologyState {}

class TechnologyDeleting extends TechnologyState {}

class TechnologyDeleted extends TechnologyState {}

class TechnologySold extends TechnologyState {}

class TechnologyError extends TechnologyState {
  final String message;

  TechnologyError(this.message);
}
