import 'package:bloc/bloc.dart';
import 'package:divar/packages/firebase/constants/constants.dart';
import 'package:divar/packages/firebase/realtime_database/realtime_database.dart';
import 'package:divar/repositories/chats_repositories/chat_repository/models/chat_model.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'chat_state.dart';

class ChatCubit extends Cubit<ChatState> {
  late final DatabaseReference _databaseReference =
      FirebaseRealtimeDatabase.getInstance()!;
  late List<ChatModel>? _chatModelsList;

  ChatCubit() : super(ChatLoading()) {
    _chatModelsList = [];
  }

  void emitGetChats() async {
    try {
      _chatModelsList = [];
      emit(ChatLoading());
      emit(ChatFetchingData());
      _databaseReference
          .child(FirebaseConstants.chats)
          .get()
          .asStream()
          .listen((event) {
        print(event);
      });
    } on Exception catch (e) {
      emit(ChatError(e.toString()));
    }
  }
}
