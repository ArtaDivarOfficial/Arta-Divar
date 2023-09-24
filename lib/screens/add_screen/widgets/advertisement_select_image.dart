import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class AdvertisementSelectImage extends StatelessWidget {
  const AdvertisementSelectImage({
    super.key,
    required this.bagImagesPathsList,
    required this.onTapClearImages,
    required this.onTapAddImages,
  });

  final List<String?> bagImagesPathsList;
  final Function() onTapClearImages;
  final Function() onTapAddImages;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 5),
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
                bagImagesPathsList.length > 1
                    ? GestureDetector(
                        onTap: onTapClearImages,
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
                  bagImagesPathsList.length + 1,
                  (index) => GestureDetector(
                    onTap: onTapAddImages,
                    child: DottedBorder(
                      dashPattern: const [12],
                      child: Container(
                        width: 100,
                        height: 100,
                        color: Colors.white,
                        child: index != 0
                            ? Image.file(File(bagImagesPathsList[index - 1]!))
                            : Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.add_a_photo,
                                    size: 35,
                                  ),
                                  Column(
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
                                        '${bagImagesPathsList.length}/10',
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
                )
              ],
            ),
          ),
          const SizedBox(height: 15),
        ],
      ),
    );
  }
}
