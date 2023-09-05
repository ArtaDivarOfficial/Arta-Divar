part of 'electric_appliances_cubit.dart';

@immutable
abstract class ElectricAppliancesState {}

class ElectricAppliancesLoading extends ElectricAppliancesState {}

class ElectricAppliancesFetchingData extends ElectricAppliancesState {}

class ElectricAppliancessListLoaded extends ElectricAppliancesState {
  final List<ElectricAppliancesModel> electricAppliancesModelsList;

  ElectricAppliancessListLoaded(this.electricAppliancesModelsList);
}

class ElectricAppliancesItemLoaded extends ElectricAppliancesState {
  final ElectricAppliancesModel electricAppliancesModel;

  ElectricAppliancesItemLoaded(this.electricAppliancesModel);
}

class ElectricAppliancesEmpty extends ElectricAppliancesState {}

class ElectricAppliancesAdding extends ElectricAppliancesState {}

class ElectricAppliancesAdded extends ElectricAppliancesState {}

class ElectricAppliancesEditing extends ElectricAppliancesState {}

class ElectricAppliancesEditted extends ElectricAppliancesState {}

class ElectricAppliancesDeleting extends ElectricAppliancesState {}

class ElectricAppliancesDeleted extends ElectricAppliancesState {}

class ElectricAppliancesSold extends ElectricAppliancesState {}

class ElectricAppliancesError extends ElectricAppliancesState {
  final String message;

  ElectricAppliancesError(this.message);
}
