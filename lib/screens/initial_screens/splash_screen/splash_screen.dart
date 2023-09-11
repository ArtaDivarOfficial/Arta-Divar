import 'package:divar/repositories/chats_repositories/chat_messages_repository/cubit/chat_message_cubit.dart';
import 'package:divar/repositories/chats_repositories/chat_repository/cubit/chat_cubit.dart';
import 'package:divar/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  static const String id = '/splash_screen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: TextButton(
            onPressed: () {
              context.read<ChatCubit>().emitGetChats('-NWCfDnn5B-Sol8Cvahm');
              context
                  .read<ChatMessageCubit>()
                  .emitGetChatMessages('-NWDRqQv1CVV766_mjbD');
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BlocBuilder<ChatCubit, ChatState>(
                  builder: (context, state) {
                    if (state is ChatLoading || state is ChatFetchingData) {
                      return const CircularProgressIndicator();
                    } else if (state is ChatsListLoaded) {
                      return Text(
                          'chats: ${state.chatModelsList.length} - users: ${state.customerModelsList.length}');
                    } else {
                      return const Text('unknown error');
                    }
                  },
                ),
                BlocBuilder<ChatMessageCubit, ChatMessageState>(
                  builder: (context, state) {
                    if (state is ChatMessageLoading ||
                        state is ChatMessageFetchingData) {
                      return const CircularProgressIndicator();
                    } else if (state is ChatMessagesListLoaded) {
                      return Text(
                          'messages: ${state.chatMessagesModelsList.length}');
                    } else {
                      return const Text('unknown error');
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
