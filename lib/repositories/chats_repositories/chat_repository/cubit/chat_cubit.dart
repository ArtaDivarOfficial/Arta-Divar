import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:divar/packages/firebase/constants/constants.dart';
import 'package:divar/packages/firebase/realtime_database/realtime_database.dart';
import 'package:divar/repositories/chats_repositories/chat_repository/models/chat_model.dart';
import 'package:divar/repositories/customers_repositories/models/customer_model.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'chat_state.dart';

class ChatCubit extends Cubit<ChatState> {
  late final DatabaseReference _databaseReference =
      FirebaseRealtimeDatabase.getInstance()!;
  late StreamSubscription _streamSubscriptionChats;
  late StreamSubscription _streamSubscriptionCustomers;
  late List<ChatModel>? _chatModelsList;
  late List<CustomerModel>? _customerModelsList;

  ChatCubit() : super(ChatLoading()) {
    _chatModelsList = [];
    _customerModelsList = [];
    emitGetChats('-NUYakSiJAtqZOTugjAN');
  }

  void emitGetChats(String customerId) async {
    try {
      _chatModelsList = [];
      _customerModelsList = [];
      emit(ChatLoading());
      emit(ChatFetchingData());
      _streamSubscriptionChats = _databaseReference
          .child(FirebaseConstants.chats)
          .onValue
          .listen((chats) {
        for (var chat in chats.snapshot.children) {
          ChatModel chatModel = ChatModel.fromMap(chat.value as Map);
          if (chatModel.chatSenderId == customerId ||
              chatModel.chatReceiverId == customerId) {
            _chatModelsList!.add(chatModel);
          }
        }
      });
      _streamSubscriptionChats = _databaseReference
          .child(FirebaseConstants.customers)
          .onValue
          .listen((customers) {
        for (var customer in customers.snapshot.children) {
          CustomerModel customerModel =
              CustomerModel.fromMap(customer.value as Map);
          for (var chat in _chatModelsList!) {
            if (customerModel.customerId != customerId) {
              if (customerModel.customerId == chat.chatReceiverId ||
                  customerModel.customerId == chat.chatSenderId) {
                _customerModelsList!.add(customerModel);
              }
            }
          }
        }
        emit(ChatsListLoaded(_chatModelsList!, _customerModelsList!));
      });
    } on Exception catch (e) {
      emit(ChatError(e.toString()));
    }
  }

  @override
  Future<void> close() {
    _streamSubscriptionChats.cancel();
    _streamSubscriptionCustomers.cancel();
    return super.close();
  }
}
