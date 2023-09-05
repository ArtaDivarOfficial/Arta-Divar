part of 'others_cubit.dart';

@immutable
abstract class OthersState {}

class OthersLoading extends OthersState {}

class OthersFetchingData extends OthersState {}

class OtherssListLoaded extends OthersState {
  final List<OthersModel> othersModelsList;

  OtherssListLoaded(this.othersModelsList);
}

class OthersItemLoaded extends OthersState {
  final OthersModel othersModel;

  OthersItemLoaded(this.othersModel);
}

class OthersEmpty extends OthersState {}

class OthersAdding extends OthersState {}

class OthersAdded extends OthersState {}

class OthersEditing extends OthersState {}

class OthersEditted extends OthersState {}

class OthersDeleting extends OthersState {}

class OthersDeleted extends OthersState {}

class OthersSold extends OthersState {}

class OthersError extends OthersState {
  final String message;

  OthersError(this.message);
}
