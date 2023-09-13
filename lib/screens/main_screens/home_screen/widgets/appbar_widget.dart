import 'package:divar/constants/colors.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Row(
        children: [
          const Spacer(flex: 2),
          Image.asset('assets/images/logo.png', scale: 20),
          const Spacer(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Text(
                'کابل',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(width: 2),
              Icon(Icons.location_on, size: 15),
            ],
          ),
          const SizedBox(width: 10),
          Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                color: kBlackColor,
                width: 1.5,
                strokeAlign: BorderSide.strokeAlignOutside,
              ),
              image: const DecorationImage(
                image: AssetImage(
                  'assets/images/support.jpg',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
