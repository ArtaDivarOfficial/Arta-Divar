part of 'mobile_cubit.dart';

@immutable
abstract class MobileState {}

class MobileLoading extends MobileState {}

class MobileFetchingData extends MobileState {}

class MobilesListLoaded extends MobileState {
  final List<MobileModel> mobileModelsList;

  MobilesListLoaded(this.mobileModelsList);
}

class MobileItemLoaded extends MobileState {
  final MobileModel mobileModel;

  MobileItemLoaded(this.mobileModel);
}

class MobileEmpty extends MobileState {}

class MobileAdding extends MobileState {}

class MobileAdded extends MobileState {}

class MobileEditing extends MobileState {}

class MobileEditted extends MobileState {}

class MobileDeleting extends MobileState {}

class MobileDeleted extends MobileState {}

class MobileSold extends MobileState {}

class MobileError extends MobileState {
  final String message;

  MobileError(this.message);
}
