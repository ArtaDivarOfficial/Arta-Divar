part of 'cosmetics_cubit.dart';

@immutable
abstract class CosmeticsState {}

class CosmeticsLoading extends CosmeticsState {}

class CosmeticsFetchingData extends CosmeticsState {}

class CosmeticssListLoaded extends CosmeticsState {
  final List<CosmeticsModel> cosmeticsModelsList;

  CosmeticssListLoaded(this.cosmeticsModelsList);
}

class CosmeticsItemLoaded extends CosmeticsState {
  final CosmeticsModel cosmeticsModel;

  CosmeticsItemLoaded(this.cosmeticsModel);
}

class CosmeticsEmpty extends CosmeticsState {}

class CosmeticsAdding extends CosmeticsState {}

class CosmeticsAdded extends CosmeticsState {}

class CosmeticsEditing extends CosmeticsState {}

class CosmeticsEditted extends CosmeticsState {}

class CosmeticsDeleting extends CosmeticsState {}

class CosmeticsDeleted extends CosmeticsState {}

class CosmeticsSold extends CosmeticsState {}

class CosmeticsError extends CosmeticsState {
  final String message;

  CosmeticsError(this.message);
}
