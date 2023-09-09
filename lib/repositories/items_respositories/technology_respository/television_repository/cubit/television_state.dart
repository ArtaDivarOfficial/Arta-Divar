part of 'television_cubit.dart';

@immutable
abstract class TelevisionState {}

class TelevisionLoading extends TelevisionState {}

class TelevisionFetchingData extends TelevisionState {}

class TelevisionsListLoaded extends TelevisionState {
  final List<TelevisionModel> televisionModelsList;

  TelevisionsListLoaded(this.televisionModelsList);
}

class TelevisionItemLoaded extends TelevisionState {
  final TelevisionModel televisionModel;

  TelevisionItemLoaded(this.televisionModel);
}

class TelevisionEmpty extends TelevisionState {}

class TelevisionAdding extends TelevisionState {}

class TelevisionAdded extends TelevisionState {}

class TelevisionEditing extends TelevisionState {}

class TelevisionEditted extends TelevisionState {}

class TelevisionDeleting extends TelevisionState {}

class TelevisionDeleted extends TelevisionState {}

class TelevisionSold extends TelevisionState {}

class TelevisionError extends TelevisionState {
  final String message;

  TelevisionError(this.message);
}
