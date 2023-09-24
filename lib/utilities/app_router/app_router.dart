import 'package:divar/screens/add_screen/add_screen.dart';
import 'package:divar/screens/categories_screen/categories_screen.dart';
import 'package:divar/screens/chats_screen/chats_screen/chats_screen.dart';
import 'package:divar/screens/details_screen/add_details_screen.dart';
import 'package:divar/screens/details_screen/details_screen.dart';
import 'package:divar/screens/home_screen/home_screen.dart';
import 'package:divar/screens/my_advertisement_screen/my_advertisement_screen.dart';
import 'package:divar/screens/screens.dart';
import 'package:divar/screens/search_screen/search_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => const Screens(),
        );
      case AddScreen.id:
        return MaterialPageRoute(
          builder: (_) => const AddScreen(),
        );
      case CategoriesScreen.id:
        return MaterialPageRoute(
          builder: (_) => const CategoriesScreen(),
        );
      case ChatsScreen.id:
        return MaterialPageRoute(
          builder: (_) => const ChatsScreen(),
        );
      case AddDetailsScreen.id:
        return MaterialPageRoute(
          builder: (_) => const AddDetailsScreen(),
        );
      case DetailsScreen.id:
        return MaterialPageRoute(
          builder: (_) => const DetailsScreen(),
        );
      case HomeScreen.id:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      case MyAdvertisementScreen.id:
        return MaterialPageRoute(
          builder: (_) => const MyAdvertisementScreen(),
        );
      case SearchScreen.id:
        return MaterialPageRoute(
          builder: (_) => const SearchScreen(),
        );
    }
    return null;
  }
}
