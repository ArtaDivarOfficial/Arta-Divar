part of 'supplies_and_equipments_cubit.dart';

@immutable
abstract class SuppliesAndEquipmentsState {}

class SuppliesAndEquipmentsLoading extends SuppliesAndEquipmentsState {}

class SuppliesAndEquipmentsFetchingData extends SuppliesAndEquipmentsState {}

class SuppliesAndEquipmentssListLoaded extends SuppliesAndEquipmentsState {
  final List<SuppliesAndEquipmentsModel> suppliesAndEquipmentsModelsList;

  SuppliesAndEquipmentssListLoaded(this.suppliesAndEquipmentsModelsList);
}

class SuppliesAndEquipmentsItemLoaded extends SuppliesAndEquipmentsState {
  final SuppliesAndEquipmentsModel suppliesAndEquipmentsModel;

  SuppliesAndEquipmentsItemLoaded(this.suppliesAndEquipmentsModel);
}

class SuppliesAndEquipmentsEmpty extends SuppliesAndEquipmentsState {}

class SuppliesAndEquipmentsAdding extends SuppliesAndEquipmentsState {}

class SuppliesAndEquipmentsAdded extends SuppliesAndEquipmentsState {}

class SuppliesAndEquipmentsEditing extends SuppliesAndEquipmentsState {}

class SuppliesAndEquipmentsEditted extends SuppliesAndEquipmentsState {}

class SuppliesAndEquipmentsDeleting extends SuppliesAndEquipmentsState {}

class SuppliesAndEquipmentsDeleted extends SuppliesAndEquipmentsState {}

class SuppliesAndEquipmentsSold extends SuppliesAndEquipmentsState {}

class SuppliesAndEquipmentsError extends SuppliesAndEquipmentsState {
  final String message;

  SuppliesAndEquipmentsError(this.message);
}
