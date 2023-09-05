part of 'business_cubit.dart';

@immutable
abstract class BusinessState {}

class BusinessLoading extends BusinessState {}

class BusinessFetchingData extends BusinessState {}

class BusinessesListLoaded extends BusinessState {
  final List<BusinessModel> businessModelsList;

  BusinessesListLoaded(this.businessModelsList);
}

class BusinessItemLoaded extends BusinessState {
  final ItemModel businessModel;

  BusinessItemLoaded(this.businessModel);
}

class BusinessEmpty extends BusinessState {}

class BusinessAdding extends BusinessState {}

class BusinessAdded extends BusinessState {}

class BusinessEditing extends BusinessState {}

class BusinessEditted extends BusinessState {}

class BusinessDeleting extends BusinessState {}

class BusinessDeleted extends BusinessState {}

class BusinessSold extends BusinessState {}

class BusinessError extends BusinessState {
  final String message;

  BusinessError(this.message);
}
