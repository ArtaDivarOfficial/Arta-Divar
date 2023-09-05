part of 'home_appliances_cubit.dart';

@immutable
abstract class HomeAppliancesState {}

class HomeAppliancesLoading extends HomeAppliancesState {}

class HomeAppliancesFetchingData extends HomeAppliancesState {}

class HomeAppliancessListLoaded extends HomeAppliancesState {
  final List<HomeAppliancesModel> homeAppliancesModelsList;

  HomeAppliancessListLoaded(this.homeAppliancesModelsList);
}

class HomeAppliancesItemLoaded extends HomeAppliancesState {
  final HomeAppliancesModel homeAppliancesModel;

  HomeAppliancesItemLoaded(this.homeAppliancesModel);
}

class HomeAppliancesEmpty extends HomeAppliancesState {}

class HomeAppliancesAdding extends HomeAppliancesState {}

class HomeAppliancesAdded extends HomeAppliancesState {}

class HomeAppliancesEditing extends HomeAppliancesState {}

class HomeAppliancesEditted extends HomeAppliancesState {}

class HomeAppliancesDeleting extends HomeAppliancesState {}

class HomeAppliancesDeleted extends HomeAppliancesState {}

class HomeAppliancesSold extends HomeAppliancesState {}

class HomeAppliancesError extends HomeAppliancesState {
  final String message;

  HomeAppliancesError(this.message);
}
