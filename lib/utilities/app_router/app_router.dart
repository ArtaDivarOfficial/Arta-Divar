import 'package:divar/screens/add_screen/add_screen.dart';
import 'package:divar/screens/categories_screen/categories_screen.dart';
import 'package:divar/screens/chats_screen/chat_screen/chat_screen.dart';
import 'package:divar/screens/chats_screen/chats_screen/chats_screen.dart';
import 'package:divar/screens/details_screen/details_screen.dart';
import 'package:divar/screens/home_screen/home_screen.dart';
import 'package:divar/screens/initial_screens/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      // case '/':
      //   return MaterialPageRoute(
      //     builder: (_) => const SplashScreen(),
      //   );
      case '/':
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      case CategoriesScreen.id:
        return MaterialPageRoute(
          builder: (_) => const CategoriesScreen(),
        );
      // case ChatsScreen.id:
      //   return MaterialPageRoute(
      //     builder: (_) => const ChatsScreen(),
      //   );
      // case ChatScreen.id:
      //   return MaterialPageRoute(
      //     builder: (_) => const ChatScreen(),
      //   );
    }
    return null;
  }
}
