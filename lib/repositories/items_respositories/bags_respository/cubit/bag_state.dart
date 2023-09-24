part of 'bag_cubit.dart';

@immutable
abstract class BagState {}

class BagLoading extends BagState {}

class BagFetchingData extends BagState {}

class BagsListLoaded extends BagState {
  final List<BagModel> bagModelsList;

  BagsListLoaded(this.bagModelsList);
}

class BagItemLoaded extends BagState {
  final BagModel bagModel;

  BagItemLoaded(this.bagModel);
}

class BagEmpty extends BagState {}

class BagAdding extends BagState {}

class BagAdded extends BagState {}

class BagEditing extends BagState {}

class BagEditted extends BagState {}

class BagDeleting extends BagState {}

class BagDeleted extends BagState {}

class BagSell extends BagState {}

class BagSold extends BagState {}

class BagError extends BagState {
  final String message;

  BagError(this.message);
}
