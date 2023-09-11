import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:divar/packages/firebase/constants/constants.dart';
import 'package:divar/packages/firebase/realtime_database/realtime_database.dart';
import 'package:divar/repositories/chats_repositories/chat_messages_repository/models/chat_message_model.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'chat_message_state.dart';

class ChatMessageCubit extends Cubit<ChatMessageState> {
  late final DatabaseReference _databaseReference =
      FirebaseRealtimeDatabase.getInstance()!;
  late StreamSubscription _streamSubscriptionChatMessages;
  late List<ChatMessageModel>? _chatMessageModelsList;

  ChatMessageCubit() : super(ChatMessageLoading()) {
    _chatMessageModelsList = [];
    emitGetChatMessages('-NWDRqQv1CVV766_mjbD');
  }

  void emitGetChatMessages(String chatId) async {
    try {
      _chatMessageModelsList = [];
      emit(ChatMessageLoading());
      emit(ChatMessageFetchingData());
      _streamSubscriptionChatMessages = _databaseReference
          .child('${FirebaseConstants.chatMessages}/$chatId')
          .onValue
          .listen((chatMessages) {
        for (var chatMessage in chatMessages.snapshot.children) {
          _chatMessageModelsList!
              .add(ChatMessageModel.fromMap(chatMessage.value as Map));
        }
        emit(ChatMessagesListLoaded(_chatMessageModelsList!));
      });
    } on Exception catch (e) {
      emit(ChatMessageError(e.toString()));
    }
  }

  @override
  Future<void> close() {
    _streamSubscriptionChatMessages.cancel();
    return super.close();
  }
}
