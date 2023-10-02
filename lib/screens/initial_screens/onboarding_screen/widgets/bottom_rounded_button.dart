import 'package:divar/constants/colors.dart';
import 'package:divar/screens/main_screens/home_screen/home_screen.dart';
import 'package:flutter/material.dart';

class BottomRoundedButton extends StatefulWidget {
  const BottomRoundedButton({
    super.key,
    required this.currentIndex,
    required this.nextPage,
  });

  final int currentIndex;
  final Function nextPage;

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
