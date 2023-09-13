import 'package:divar/repositories/chats_repositories/chat_repository/cubit/chat_cubit.dart';
import 'package:divar/repositories/chats_repositories/chat_repository/models/chat_model.dart';
import 'package:divar/repositories/customers_repositories/models/customer_model.dart';
import 'package:divar/screens/chats_screen/chat_screen/chat_screen.dart';
import 'package:divar/screens/chats_screen/chats_screen/widgets/customer_chat_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({super.key});

  static const String id = '/chats_screen';

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  bool isDataLoaded = false;

  @override
  Widget build(BuildContext context) {
    if (!isDataLoaded) {
      context.read<ChatCubit>().emitGetChats('-NWCfDnn5B-Sol8Cvahm');
      isDataLoaded = true;
    }
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              const PageTitleTextWidget(
                title: 'پیام ها',
              ),
              SizedBox(
                child: Expanded(
                  child: SingleChildScrollView(
                    child: BlocBuilder<ChatCubit, ChatState>(
                      builder: (context, state) {
                        if (state is ChatLoading || state is ChatFetchingData) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        } else if (state is ChatEmpty) {
                          return const Center(
                            child: Text('لست خالی میباشد'),
                          );
                        } else if (state is ChatsListLoaded) {
                          return Column(
                            children: List.generate(state.chatModelsList.length,
                                (index) {
                              CustomerModel customerModel =
                                  state.customerModelsList[index];
                              ChatModel chatModel = state.chatModelsList[index];
                              return GestureDetector(
                                onLongPress: () {
                                  // onLongPressChat(context, chatItemsModel, index);
                                },
                                child: CustomerChatWidget(
                                  onPressed: () {
                                    Navigator.pushNamed(context, ChatScreen.id);
                                  },
                                  customerProfileImageUrl:
                                      customerModel.customerProfileImageUrl,
                                  customerOnlineStatus:
                                      customerModel.customerOnlineStatus,
                                  customerName: customerModel.customerFullName,
                                  chatLastMessage: chatModel.chatLastMessage,
                                  chatIsNewMessage: chatModel.chatIsNewMessage,
                                  chatLastMessageTime:
                                      chatModel.chatLastMessageTime,
                                ),
                              );
                            }),
                          );
                        } else if (state is ChatError) {
                          return Center(
                            child: Text('error: ${state.message}'),
                          );
                        } else {
                          return const Center(
                            child: Text('unknown error'),
                          );
                        }
                      },
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class PageTitleTextWidget extends StatelessWidget {
  const PageTitleTextWidget({
    super.key,
    this.title = '',
  });

  final String? title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title!,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ],
      ),
    );
  }
}
