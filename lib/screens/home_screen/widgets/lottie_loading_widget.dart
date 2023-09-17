import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieLoadingWidget extends StatelessWidget {
  const LottieLoadingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Center(
        child: Lottie.asset(
          'assets/lottie_animations/loading.json',
          height: 50,
          width: 400,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
