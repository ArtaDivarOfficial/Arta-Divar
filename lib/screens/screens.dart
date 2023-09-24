import 'package:divar/screens/add_screen/add_screen.dart';
import 'package:divar/screens/categories_screen/categories_screen.dart';
import 'package:divar/screens/chats_screen/chats_screen/chats_screen.dart';
import 'package:divar/screens/details_screen/details_screen.dart';
import 'package:divar/screens/home_screen/home_screen.dart';
import 'package:divar/screens/my_advertisement_screen/my_advertisement_screen.dart';
import 'package:divar/screens/search_screen/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Screens extends StatefulWidget {
  const Screens({super.key});

  @override
  State<Screens> createState() => _ScreensState();
}

class _ScreensState extends State<Screens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, AddScreen.id);
              },
              child: const Text('Add Screen'),
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, CategoriesScreen.id);
              },
              child: const Text('Categories Screen'),
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, ChatsScreen.id);
              },
              child: const Text('Chats Screen'),
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, DetailsScreen.id);
              },
              child: const Text('Details Screen'),
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, HomeScreen.id);
              },
              child: const Text('Home Screen'),
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, MyAdvertisementScreen.id);
              },
              child: const Text('My Advertisement Screen'),
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, SearchScreen.id);
              },
              child: const Text('Search Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
