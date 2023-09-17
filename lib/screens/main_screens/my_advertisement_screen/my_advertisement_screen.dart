import 'package:flutter/material.dart';

class MyAdvertisementScreen extends StatelessWidget {
  const MyAdvertisementScreen({super.key});
  static const String id = '/my_advertisement_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('آگهی های من'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
