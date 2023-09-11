import 'package:bloc/bloc.dart';
import 'package:divar/repositories/chats_repositories/chat_messages_repository/models/chat_message_model.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'chat_message_state.dart';

class ChatMessageCubit extends Cubit<ChatMessageState> {
  late List<ChatMessageModel>? _chatMessageModelsList;

  ChatMessageCubit() : super(ChatMessageLoading()) {
    _chatMessageModelsList = [];
  }

  void emitGetChatMessages() async {
    try {
      _chatMessageModelsList = [];
      emit(ChatMessageLoading());
      emit(ChatMessageFetchingData());
    } on Exception catch (e) {
      emit(ChatMessageError(e.toString()));
    }
  }
}
