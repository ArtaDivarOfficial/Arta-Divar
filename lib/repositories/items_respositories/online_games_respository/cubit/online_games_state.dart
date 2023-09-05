part of 'online_games_cubit.dart';

@immutable
abstract class OnlineGamesState {}

class OnlineGamesLoading extends OnlineGamesState {}

class OnlineGamesFetchingData extends OnlineGamesState {}

class OnlineGamessListLoaded extends OnlineGamesState {
  final List<OnlineGamesModel> onlineGamesModelsList;

  OnlineGamessListLoaded(this.onlineGamesModelsList);
}

class OnlineGamesItemLoaded extends OnlineGamesState {
  final OnlineGamesModel onlineGamesModel;

  OnlineGamesItemLoaded(this.onlineGamesModel);
}

class OnlineGamesEmpty extends OnlineGamesState {}

class OnlineGamesAdding extends OnlineGamesState {}

class OnlineGamesAdded extends OnlineGamesState {}

class OnlineGamesEditing extends OnlineGamesState {}

class OnlineGamesEditted extends OnlineGamesState {}

class OnlineGamesDeleting extends OnlineGamesState {}

class OnlineGamesDeleted extends OnlineGamesState {}

class OnlineGamesSold extends OnlineGamesState {}

class OnlineGamesError extends OnlineGamesState {
  final String message;

  OnlineGamesError(this.message);
}
