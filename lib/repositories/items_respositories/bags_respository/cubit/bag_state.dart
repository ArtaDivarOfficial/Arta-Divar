part of 'bag_cubit.dart';

@immutable
abstract class BagState {}

class BagLoading extends BagState {}

class BagFetchingData extends BagState {}

class BagsListLoaded extends BagState {
  final List<ItemModel> bagModelsList;

  BagsListLoaded(this.bagModelsList);
}

class BagItemLoaded extends BagState {
  final ItemModel bagModel;

  BagItemLoaded(this.bagModel);
}

class BagLoadedById extends BagState {
  final BagModel bagModel;

  BagLoadedById(this.bagModel);
}

class BagEmpty extends BagState {}

class BagAdding extends BagState {}

class BagAdded extends BagState {}

class BagEditing extends BagState {}

class BagEditted extends BagState {}

class BagDeleting extends BagState {}

class BagDeleted extends BagState {}

class BagSold extends BagState {}

class BagError extends BagState {
  final String message;

  BagError(this.message);
}