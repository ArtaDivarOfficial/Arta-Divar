import 'package:divar/constants/colors.dart';
import 'package:flutter/material.dart';

class ItemsWidget extends StatelessWidget {
  const ItemsWidget({
    super.key,
    required this.image,
    required this.title,
    required this.address,
    required this.price,
  });
  final String image;
  final String title;
  final String address;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      margin: const EdgeInsets.symmetric(horizontal: 3, vertical: 3),
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: kWhiteColor,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 0),
            blurRadius: 2,
            color: kBlackColor.withOpacity(0.15),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 175),
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(height: 5),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.location_pin,
                      size: 15,
                    ),
                    ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 132),
                      child: Text(
                        address,
                        style: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text.rich(
                    TextSpan(
                      text: 'ا-ف ',
                      children: [
                        TextSpan(
                          text: price,
                          style: const TextStyle(fontWeight: FontWeight.w600),
                          children: const [],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [],
          ),
        ],
      ),
    );
  }
}
