import 'package:divar/constants/colors.dart';
import 'package:divar/constants/lists.dart';
import 'package:flutter/material.dart';

class AdvertisementBannerIndicatorWidget extends StatelessWidget {
  const AdvertisementBannerIndicatorWidget({
    super.key,
    required this.currentIndex,
  });

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(advertisementBannerList.length, (index) {
        return Container(
          margin: EdgeInsets.only(
            left: 5,
            right: index == advertisementBannerList.length - 1 ? 2 : 0,
            bottom: 10,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              height: index == currentIndex ? 3 : 2,
              width: index == currentIndex ? 25 : 8,
              color: kLightPrimaryColor,
            ),
          ),
        );
      }),
    );
  }
}
