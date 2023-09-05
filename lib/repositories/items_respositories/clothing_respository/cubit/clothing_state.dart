part of 'clothing_cubit.dart';

@immutable
abstract class ClothingState {}

class ClothingLoading extends ClothingState {}

class ClothingFetchingData extends ClothingState {}

class ClothingsListLoaded extends ClothingState {
  final List<ClothingModel> clothingModelsList;

  ClothingsListLoaded(this.clothingModelsList);
}

class ClothingItemLoaded extends ClothingState {
  final ClothingModel clothingModel;

  ClothingItemLoaded(this.clothingModel);
}

class ClothingEmpty extends ClothingState {}

class ClothingAdding extends ClothingState {}

class ClothingAdded extends ClothingState {}

class ClothingEditing extends ClothingState {}

class ClothingEditted extends ClothingState {}

class ClothingDeleting extends ClothingState {}

class ClothingDeleted extends ClothingState {}

class ClothingSold extends ClothingState {}

class ClothingError extends ClothingState {
  final String message;

  ClothingError(this.message);
}
