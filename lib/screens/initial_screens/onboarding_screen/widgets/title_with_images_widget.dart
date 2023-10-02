import 'package:divar/constants/list.dart';
import 'package:flutter/material.dart';

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
