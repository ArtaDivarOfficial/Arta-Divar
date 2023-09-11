part of 'chat_cubit.dart';

@immutable
abstract class ChatState {}

class ChatLoading extends ChatState {}

class ChatFetchingData extends ChatState {}

class ChatsListLoaded extends ChatState {
  final List<ChatModel> chatsModelsList;

  ChatsListLoaded(this.chatsModelsList);
}

class ChatEmpty extends ChatState {}

class ChatDeleting extends ChatState {}

class ChatDeleted extends ChatState {}

class ChatError extends ChatState {
  final String message;

  ChatError(this.message);
}
