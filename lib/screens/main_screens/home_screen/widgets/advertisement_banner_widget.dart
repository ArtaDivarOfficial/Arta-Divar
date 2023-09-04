import 'dart:async';

import 'package:divar/constants/list.dart';
import 'package:flutter/material.dart';
import 'package:divar/constants/colors.dart';

class AdvertisementBannerWidget extends StatefulWidget {
  const AdvertisementBannerWidget({super.key});

  @override
  State<AdvertisementBannerWidget> createState() =>
      _AdvertisementBannerWidgetState();
}

class _AdvertisementBannerWidgetState extends State<AdvertisementBannerWidget> {
  late PageController _pageController;
  int currentImage = 0;
  late Timer _timer;
  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      viewportFraction: 0.9,
      initialPage: 0,
    );
    _timer = Timer.periodic(
      //! THIS IS THE TIME SPENT FOR WAITING ON EACH SLIDE //
      const Duration(seconds: 6),
      (Timer timer) async {
        if (currentImage < advertisementBannerList.length - 1) {
          currentImage++;
        } else {
          currentImage = 0;
        }
        _pageController.animateToPage(
          currentImage,
          //! THIS IS THE DURATION OF SLIDING ITSELFT //
          duration: const Duration(milliseconds: 1200),
          curve: Curves.easeIn,
        );
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 165,
          child: PageView.builder(
            onPageChanged: (value) {
              setState(() {
                currentImage = value;
              });
            },
            physics: const BouncingScrollPhysics(),
            itemCount: advertisementBannerList.length,
            controller: _pageController,
            itemBuilder: (context, index) => Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 5),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                image: DecorationImage(
                  image: AssetImage('assets/images/123.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Indicators(currentImage: currentImage),
      ],
    );
  }
}

class Indicators extends StatelessWidget {
  const Indicators({
    super.key,
    required this.currentImage,
  });

  final int currentImage;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(
          3,
          (index) => AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            width: index == currentImage ? 15 : 5,
            height: 5,
            margin: const EdgeInsets.only(right: 2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: index == currentImage
                  ? kGreyColor
                  : kGreyColor.withOpacity(0.5),
            ),
          ),
        )
      ],
    );
  }
}
