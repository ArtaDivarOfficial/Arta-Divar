import 'package:divar/constants/colors.dart';
import 'package:divar/constants/list.dart';
import 'package:divar/screens/main_screens/home_screen/home_screen.dart';
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

class BottomRoundedButton extends StatefulWidget {
  const BottomRoundedButton({
    super.key,
    required this.currentIndex,
    required this.nextPage,
  });

  final int currentIndex;
  final Function() nextPage;

  @override
  State<BottomRoundedButton> createState() => _BottomRoundedButtonState();
}

class _BottomRoundedButtonState extends State<BottomRoundedButton> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 30,
      left: 20,
      child: GestureDetector(
        onTap: () {
          setState(() {
            widget.currentIndex == 2
                ? Navigator.pushNamed(context, HomeScreen.id)
                : widget.nextPage();
          });
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          width: widget.currentIndex != 2 ? 60 : 140,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: kLightSecondaryColor,
          ),
          child: widget.currentIndex != 2
              ? const Icon(
                  Icons.arrow_back_ios_new_rounded,
                  size: 25,
                  color: kWhiteColor,
                )
              : Center(
                  child: Text(
                    'ورود به برنامه',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontSize: 18,
                          color: kWhiteColor,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
        ),
      ),
    );
  }
}

class TitleWithEntireScreenImageWidget extends StatefulWidget {
  const TitleWithEntireScreenImageWidget({
    super.key,
    required this.pageController,
    required this.onPageChanged,
  });

  final PageController pageController;
  final Function(dynamic value) onPageChanged;

  @override
  State<TitleWithEntireScreenImageWidget> createState() =>
      _TitleWithEntireScreenImageWidgetState();
}

class _TitleWithEntireScreenImageWidgetState
    extends State<TitleWithEntireScreenImageWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        controller: widget.pageController,
        itemCount: 3,
        onPageChanged: widget.onPageChanged,
        itemBuilder: (context, index) {
          return TitleWithImagesWidget(index: index);
        },
      ),
    );
  }
}

class IndicatorsWidget extends StatelessWidget {
  const IndicatorsWidget({
    super.key,
    required this.currentIndex,
  });
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      heightFactor: 150,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...List.generate(
            3,
            (index) => indicatorWidget(index: index),
          ),
        ],
      ),
    );
  }

  AnimatedContainer indicatorWidget({required int index}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: index == currentIndex ? 25 : 13,
      height: 4,
      margin: const EdgeInsets.only(right: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: index == currentIndex
            ? kBlackColor.withOpacity(0.6)
            : kBlackColor.withOpacity(0.1),
      ),
    );
  }
}

class TitleWithImagesWidget extends StatelessWidget {
  const TitleWithImagesWidget({
    super.key,
    required this.index,
  });
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 60),
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 300),
          child: Text(
            '${onboardingList[index]['title']}',
            style: index == 0
                ? Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    )
                : Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                    ),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          '${onboardingList[index]['subTitle']}',
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
        ),
        const SizedBox(height: 50),
        Container(
          height: 260,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                onboardingList[index]['image'],
              ),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Expanded(
          child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    onboardingList[index]['bottomImage'],
                  ),
                  fit: BoxFit.cover),
            ),
          ),
        ),
      ],
    );
  }
}
