import 'dart:convert';

import 'package:divar/repositories/chats_repositories/chat_repository/constants/constants.dart';

class ChatModel {
  final String? chatId;
  final String? chatSenderId;
  final String? chatReciverId;
  final String? chatLastMessage;
  final int? chatLastMessageTime;
  final bool? chatIsNewMessage;

  ChatModel({
    required this.chatId,
    required this.chatSenderId,
    required this.chatReciverId,
    required this.chatLastMessage,
    required this.chatLastMessageTime,
    required this.chatIsNewMessage,
  });

  ChatModel copyWith({
    String? chatId,
    String? chatSenderId,
    String? chatReciverId,
    String? chatLastMessage,
    int? chatLastMessageTime,
    bool? chatIsNewMessage,
  }) {
    return ChatModel(
      chatId: chatId ?? this.chatId,
      chatSenderId: chatSenderId ?? this.chatSenderId,
      chatReciverId: chatReciverId ?? this.chatReciverId,
      chatLastMessage: chatLastMessage ?? this.chatLastMessage,
      chatLastMessageTime: chatLastMessageTime ?? this.chatLastMessageTime,
      chatIsNewMessage: chatIsNewMessage ?? this.chatIsNewMessage,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      ChatConstants.chatId: chatId,
      ChatConstants.chatSenderId: chatSenderId,
      ChatConstants.chatReciverId: chatReciverId,
      ChatConstants.chatLastMessage: chatLastMessage,
      ChatConstants.chatLastMessageTime: chatLastMessageTime,
      ChatConstants.chatIsNewMessage: chatIsNewMessage,
    };
  }

  factory ChatModel.fromMap(Map<String, dynamic> map) {
    return ChatModel(
      chatId: map[ChatConstants.chatId] != null
          ? map[ChatConstants.chatId] as String
          : null,
      chatSenderId: map[ChatConstants.chatSenderId] != null
          ? map[ChatConstants.chatSenderId] as String
          : null,
      chatReciverId: map[ChatConstants.chatReciverId] != null
          ? map[ChatConstants.chatReciverId] as String
          : null,
      chatLastMessage: map[ChatConstants.chatLastMessage] != null
          ? map[ChatConstants.chatLastMessage] as String
          : null,
      chatLastMessageTime: map[ChatConstants.chatLastMessageTime] != null
          ? map[ChatConstants.chatLastMessageTime] as int
          : null,
      chatIsNewMessage: map[ChatConstants.chatIsNewMessage] != null
          ? map[ChatConstants.chatIsNewMessage] as bool
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ChatModel.fromJson(String source) =>
      ChatModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ChatModel(chatId: $chatId, chatSenderId: $chatSenderId, chatReciverId: $chatReciverId, chatLastMessage: $chatLastMessage, chatLastMessageTime: $chatLastMessageTime, chatIsNewMessage: $chatIsNewMessage)';
  }

  @override
  bool operator ==(covariant ChatModel other) {
    if (identical(this, other)) return true;

    return other.chatId == chatId &&
        other.chatSenderId == chatSenderId &&
        other.chatReciverId == chatReciverId &&
        other.chatLastMessage == chatLastMessage &&
        other.chatLastMessageTime == chatLastMessageTime &&
        other.chatIsNewMessage == chatIsNewMessage;
  }

  @override
  int get hashCode {
    return chatId.hashCode ^
        chatSenderId.hashCode ^
        chatReciverId.hashCode ^
        chatLastMessage.hashCode ^
        chatLastMessageTime.hashCode ^
        chatIsNewMessage.hashCode;
  }
}
