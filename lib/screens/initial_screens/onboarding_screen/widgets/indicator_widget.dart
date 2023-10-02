import 'package:divar/constants/colors.dart';
import 'package:flutter/material.dart';

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
