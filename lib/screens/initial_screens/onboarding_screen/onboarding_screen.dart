import 'package:divar/screens/initial_screens/onboarding_screen/widgets/bottom_rounded_button.dart';
import 'package:divar/screens/initial_screens/onboarding_screen/widgets/indicator_widget.dart';
import 'package:divar/screens/initial_screens/onboarding_screen/widgets/title_with_entire_screen_image_widget.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});
  static const String id = '/onboarding_screen';

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentIndex = 0;
  PageController pageController = PageController(initialPage: 0);

  void nextPage() {
    setState(() {
      currentIndex += 1;
    });
    pageController.nextPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            TitleWithEntireScreenImageWidget(
              pageController: pageController,
              onPageChanged: (value) {
                setState(() {
                  currentIndex = value;
                });
              },
            ),
            IndicatorsWidget(
              currentIndex: currentIndex,
            ),
            BottomRoundedButton(
              currentIndex: currentIndex,
              nextPage: nextPage,
            )
          ],
        ),
      ),
    );
  }
}
