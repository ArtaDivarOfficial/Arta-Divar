import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:divar/constants/lists.dart';
import 'package:divar/screens/home_screen/widgets/advertisement_banner_indicator_widget.dart';
import 'package:flutter/material.dart';

class AdvertisementBannerWidget extends StatefulWidget {
  const AdvertisementBannerWidget({super.key});

  @override
  State<AdvertisementBannerWidget> createState() =>
      _AdvertisementBannerWidgetState();
}

class _AdvertisementBannerWidgetState extends State<AdvertisementBannerWidget> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: CarouselSlider(
              options: CarouselOptions(
                height: 175,
                viewportFraction: 0.78,
                enableInfiniteScroll: true,
                initialPage: 0,
                enlargeCenterPage: true,
                enlargeFactor: 0.175,
                scrollDirection: Axis.horizontal,
                scrollPhysics: const BouncingScrollPhysics(),
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                autoPlay: true,
                autoPlayInterval: const Duration(milliseconds: 7500),
                autoPlayAnimationDuration: const Duration(seconds: 1),
              ),
              items: List.generate(advertisementBannerList.length, (index) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    advertisementBannerList[index],
                    fit: BoxFit.fitHeight,
                  ),
                );
              }),
            ),
          ),
          const SizedBox(height: 10),
          AdvertisementBannerIndicatorWidget(currentIndex: currentIndex),
        ],
      ),
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
                  ? Colors.grey
                  : Colors.grey.withOpacity(0.5),
            ),
          ),
        )
      ],
    );
  }
}
