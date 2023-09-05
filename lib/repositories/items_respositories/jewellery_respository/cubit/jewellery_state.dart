part of 'jewellery_cubit.dart';

@immutable
abstract class JewelleryState {}

class JewelleryLoading extends JewelleryState {}

class JewelleryFetchingData extends JewelleryState {}

class JewellerysListLoaded extends JewelleryState {
  final List<JewelleryModel> jewelleryModelsList;

  JewellerysListLoaded(this.jewelleryModelsList);
}

class JewelleryItemLoaded extends JewelleryState {
  final JewelleryModel jewelleryModel;

  JewelleryItemLoaded(this.jewelleryModel);
}

class JewelleryEmpty extends JewelleryState {}

class JewelleryAdding extends JewelleryState {}

class JewelleryAdded extends JewelleryState {}

class JewelleryEditing extends JewelleryState {}

class JewelleryEditted extends JewelleryState {}

class JewelleryDeleting extends JewelleryState {}

class JewelleryDeleted extends JewelleryState {}

class JewellerySold extends JewelleryState {}

class JewelleryError extends JewelleryState {
  final String message;

  JewelleryError(this.message);
}
