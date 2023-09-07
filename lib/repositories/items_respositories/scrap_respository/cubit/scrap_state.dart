part of 'scrap_cubit.dart';

@immutable
abstract class ScrapState {}

class ScrapLoading extends ScrapState {}

class ScrapFetchingData extends ScrapState {}

class ScrapsListLoaded extends ScrapState {
  final List<ScrapModel> scrapModelsList;

  ScrapsListLoaded(this.scrapModelsList);
}

class ScrapItemLoaded extends ScrapState {
  final ScrapModel scrapModel;

  ScrapItemLoaded(this.scrapModel);
}

class ScrapEmpty extends ScrapState {}

class ScrapAdding extends ScrapState {}

class ScrapAdded extends ScrapState {}

class ScrapEditing extends ScrapState {}

class ScrapEditted extends ScrapState {}

class ScrapDeleting extends ScrapState {}

class ScrapDeleted extends ScrapState {}

class ScrapSold extends ScrapState {}

class ScrapError extends ScrapState {
  final String message;

  ScrapError(this.message);
}
