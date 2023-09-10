part of 'foodstuff_cubit.dart';

@immutable
abstract class FoodstuffState {}

class FoodstuffLoading extends FoodstuffState {}

class FoodstuffFetchingData extends FoodstuffState {}

class FoodstuffsListLoaded extends FoodstuffState {
  final List<FoodstuffModel> foodstuffModelsList;

  FoodstuffsListLoaded(this.foodstuffModelsList);
}

class FoodstuffItemLoaded extends FoodstuffState {
  final FoodstuffModel foodstuffModel;

  FoodstuffItemLoaded(this.foodstuffModel);
}

class FoodstuffEmpty extends FoodstuffState {}

class FoodstuffAdding extends FoodstuffState {}

class FoodstuffAdded extends FoodstuffState {}

class FoodstuffEditing extends FoodstuffState {}

class FoodstuffEditted extends FoodstuffState {}

class FoodstuffDeleting extends FoodstuffState {}

class FoodstuffDeleted extends FoodstuffState {}

class FoodstuffSold extends FoodstuffState {}

class FoodstuffError extends FoodstuffState {
  final String message;

  FoodstuffError(this.message);
}
