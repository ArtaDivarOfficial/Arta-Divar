import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class AdvertisementSelectImage extends StatefulWidget {
  const AdvertisementSelectImage({super.key});

  @override
  State<AdvertisementSelectImage> createState() =>
      _AdvertisementSelectImageState();
}

class _AdvertisementSelectImageState extends State<AdvertisementSelectImage> {
  int imgCounter = 0;
  int selectedImage = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'عکس های آگهی',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontSize: Theme.of(context)
                            .textTheme
                            .titleLarge!
                            .fontSize!
                            .toInt() -
                        2),
              ),
              selectedImage > 1
                  ? GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedImage = 1;
                        });
                      },
                      child: Text(
                        'پاک کردن همه',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    )
                  : const SizedBox(),
            ],
          ),
        ),
        const SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Wrap(
            direction: Axis.horizontal,
            spacing: 15,
            runSpacing: 15,
            children: [
              ...List.generate(
                selectedImage,
                (index) => Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        if (selectedImage <= 10) {
                          selectedImage++;
                          imgCounter++;
                        }
                      });
                    },
                    child: DottedBorder(
                      dashPattern: const [12],
                      child: Container(
                        width: 100,
                        height: 100,
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              index != 0
                                  ? Icons.photo_camera_rounded
                                  : Icons.add_a_photo,
                              size: index != 0 ? 40 : 35,
                            ),
                            index != 0
                                ? const SizedBox()
                                : Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      const SizedBox(height: 5),
                                      Text(
                                        'افزودن عکس',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleSmall,
                                      ),
                                      Text(
                                        '$imgCounter/10',
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelSmall,
                                      ),
                                    ],
                                  ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
