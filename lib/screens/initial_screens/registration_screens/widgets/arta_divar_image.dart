import 'package:flutter/material.dart';

class ArtaDivarImage extends StatelessWidget {
  const ArtaDivarImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 350,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/logo.png'),
          scale: 3.5,
        ),
      ),
    );
  }
}
