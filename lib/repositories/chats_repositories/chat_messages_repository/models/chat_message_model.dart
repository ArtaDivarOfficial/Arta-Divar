import 'dart:convert';

import 'package:divar/repositories/chats_repositories/chat_messages_repository/constants/constants.dart';

class ChatMessageModel {
  final String? chatId;
  final String? chatMessageId;
  final String? chatSenderId;
  final String? chatReceiverId;
  final String? chatMessage;
  final bool? chatMessageIsSeen;
  final int? chatMessageSendTime;

  ChatMessageModel({
    required this.chatId,
    required this.chatMessageId,
    required this.chatSenderId,
    required this.chatReceiverId,
    required this.chatMessage,
    required this.chatMessageIsSeen,
    required this.chatMessageSendTime,
  });

  ChatMessageModel copyWith({
    String? chatId,
    String? chatMessageId,
    String? chatSenderId,
    String? chatReceiverId,
    String? chatMessage,
    bool? chatMessageIsSeen,
    int? chatMessageSendTime,
  }) {
    return ChatMessageModel(
      chatId: chatId ?? this.chatId,
      chatMessageId: chatMessageId ?? this.chatMessageId,
      chatSenderId: chatSenderId ?? this.chatSenderId,
      chatReceiverId: chatReceiverId ?? this.chatReceiverId,
      chatMessage: chatMessage ?? this.chatMessage,
      chatMessageIsSeen: chatMessageIsSeen ?? this.chatMessageIsSeen,
      chatMessageSendTime: chatMessageSendTime ?? this.chatMessageSendTime,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      ChatMessageConstants.chatId: chatId,
      ChatMessageConstants.chatMessageId: chatMessageId,
      ChatMessageConstants.chatSenderId: chatSenderId,
      ChatMessageConstants.chatReceiverId: chatReceiverId,
      ChatMessageConstants.chatMessage: chatMessage,
      ChatMessageConstants.chatMessageIsSeen: chatMessageIsSeen,
      ChatMessageConstants.chatMessageSendTime: chatMessageSendTime,
    };
  }

  factory ChatMessageModel.fromMap(Map<Object?, Object?> map) {
    return ChatMessageModel(
      chatId: map[ChatMessageConstants.chatId] != null
          ? map[ChatMessageConstants.chatId] as String
          : null,
      chatMessageId: map[ChatMessageConstants.chatMessageId] != null
          ? map[ChatMessageConstants.chatMessageId] as String
          : null,
      chatSenderId: map[ChatMessageConstants.chatSenderId] != null
          ? map[ChatMessageConstants.chatSenderId] as String
          : null,
      chatReceiverId: map[ChatMessageConstants.chatReceiverId] != null
          ? map[ChatMessageConstants.chatReceiverId] as String
          : null,
      chatMessage: map[ChatMessageConstants.chatMessage] != null
          ? map[ChatMessageConstants.chatMessage] as String
          : null,
      chatMessageIsSeen: map[ChatMessageConstants.chatMessageIsSeen] != null
          ? map[ChatMessageConstants.chatMessageIsSeen] as bool
          : null,
      chatMessageSendTime: map[ChatMessageConstants.chatMessageSendTime] != null
          ? map[ChatMessageConstants.chatMessageSendTime] as int
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ChatMessageModel.fromJson(String source) =>
      ChatMessageModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ChatMessageModel(chatId: $chatId, chatMessageId: $chatMessageId, chatSenderId: $chatSenderId, chatReceiverId: $chatReceiverId, chatMessage: $chatMessage, chatMessageIsSeen: $chatMessageIsSeen, chatMessageSendTime: $chatMessageSendTime)';
  }

  @override
  bool operator ==(covariant ChatMessageModel other) {
    if (identical(this, other)) return true;

    return other.chatId == chatId &&
        other.chatMessageId == chatMessageId &&
        other.chatSenderId == chatSenderId &&
        other.chatReceiverId == chatReceiverId &&
        other.chatMessage == chatMessage &&
        other.chatMessageIsSeen == chatMessageIsSeen &&
        other.chatMessageSendTime == chatMessageSendTime;
  }

  @override
  int get hashCode {
    return chatId.hashCode ^
        chatMessageId.hashCode ^
        chatSenderId.hashCode ^
        chatReceiverId.hashCode ^
        chatMessage.hashCode ^
        chatMessageIsSeen.hashCode ^
        chatMessageSendTime.hashCode;
  }
}
