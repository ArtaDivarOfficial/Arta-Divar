part of 'chat_message_cubit.dart';

@immutable
abstract class ChatMessageState {}

class ChatMessageLoading extends ChatMessageState {}

class ChatMessageFetchingData extends ChatMessageState {}

class ChatMessagesListLoaded extends ChatMessageState {
  final List<ChatMessageModel> chatMessagesModelsList;

  ChatMessagesListLoaded(this.chatMessagesModelsList);
}

class ChatMessageEmpty extends ChatMessageState {}

class ChatMessageSending extends ChatMessageState {}

class ChatMessageSent extends ChatMessageState {}

class ChatMessageDeleting extends ChatMessageState {}

class ChatMessageDeleted extends ChatMessageState {}

class ChatMessageEditing extends ChatMessageState {}

class ChatMessageEdited extends ChatMessageState {}

class ChatMessageError extends ChatMessageState {
  final String message;

  ChatMessageError(this.message);
}
