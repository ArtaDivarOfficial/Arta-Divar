part of 'my_advertisements_cubit.dart';

@immutable
abstract class MyAdvertisementsState {}

class MyAdvertisementsLoading extends MyAdvertisementsState {}

class MyAdvertisementsFetchingData extends MyAdvertisementsState {}

class MyAdvertisementssListLoaded extends MyAdvertisementsState {
  final List<MyAdvertisementModel> myAdvertisementsModelsList;

  MyAdvertisementssListLoaded(this.myAdvertisementsModelsList);
}

class MyAdvertisementsItemLoaded extends MyAdvertisementsState {
  final MyAdvertisementModel myAdvertisementsModel;

  MyAdvertisementsItemLoaded(this.myAdvertisementsModel);
}

class MyAdvertisementsEmpty extends MyAdvertisementsState {}

class MyAdvertisementsAdding extends MyAdvertisementsState {}

class MyAdvertisementsAdded extends MyAdvertisementsState {}

class MyAdvertisementsEditing extends MyAdvertisementsState {}

class MyAdvertisementsEditted extends MyAdvertisementsState {}

class MyAdvertisementsDeleting extends MyAdvertisementsState {}

class MyAdvertisementsDeleted extends MyAdvertisementsState {}

class MyAdvertisementsSold extends MyAdvertisementsState {}

class MyAdvertisementsError extends MyAdvertisementsState {
  final String message;

  MyAdvertisementsError(this.message);
}
