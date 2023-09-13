import 'package:divar/constants/colors.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class AdvertisementSelectImage extends StatefulWidget {
  // انتخاب عکس با ویجت رپ به صورت افقی
  // انتخاب عکس با ویجت رپ به صورت افقی
  const AdvertisementSelectImage({super.key});

  @override
  State<AdvertisementSelectImage> createState() =>
      _AdvertisementSelectImageState();
}

class _AdvertisementSelectImageState extends State<AdvertisementSelectImage> {
  int imgCounter = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 15),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'عکس آگهی',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Wrap(
            direction: Axis.horizontal,
            spacing: 12,
            runSpacing: 12,
            children: [
              ...List.generate(
                3,
                (index) => DottedBorder(
                  dashPattern: const [15],
                  child: Container(
                    width: 105,
                    height: 105,
                    decoration: BoxDecoration(
                      color: kWhiteColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          index != 0
                              ? Icons.photo_camera_rounded
                              : Icons.add_a_photo,
                          size: index != 0 ? 45 : 35,
                        ),
                        const SizedBox(height: 8),
                        index != 0
                            ? const SizedBox()
                            : Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  const Text(
                                    'افزودن عکس',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 13,
                                    ),
                                  ),
                                  Text(
                                    '$imgCounter/10',
                                    style: const TextStyle(fontSize: 8),
                                  ),
                                ],
                              ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
