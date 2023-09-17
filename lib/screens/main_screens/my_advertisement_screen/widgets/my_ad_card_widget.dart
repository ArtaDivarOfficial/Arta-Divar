import 'package:divar/constants/colors.dart';
import 'package:flutter/material.dart';

class MyAdCardWidget extends StatefulWidget {
  const MyAdCardWidget({
    super.key,
    required this.image,
    required this.title,
    required this.address,
    required this.price,
    required this.index,
  });
  final String image;
  final String title;
  final String address;
  final String price;
  final int index;
  @override
  State<MyAdCardWidget> createState() => _MyAdCardWidgetState();
}

class _MyAdCardWidgetState extends State<MyAdCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(20, widget.index == 0 ? 10 : 0, 20, 10),
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 2),
            blurRadius: 4,
            color: kBlackColor.withOpacity(0.1),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //! Image Box ...
          //! Image Box ...
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(widget.image),
                fit: BoxFit.cover,
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(8),
              ),
            ),
          ),
          const SizedBox(width: 15),
          //! Good Properties Vertical Box ...
          //! Good Properties Vertical Box ...
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 175),
                child: Text(
                  widget.title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
              //! Address with Icon ..
              //! Address with Icon ..
              Row(
                children: [
                  const Icon(
                    Icons.location_on_rounded,
                    size: 18,
                  ),
                  const SizedBox(width: 2),
                  ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 190),
                    child: Text(
                      widget.address,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                ],
              ),
              //! Price with Icon ..
              //! Price with Icon ..
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 6),
                    decoration: BoxDecoration(
                      color: Colors.redAccent.shade400,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      '۶۰۰۰ ؋ تخفیف',
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(color: Colors.white),
                    ),
                  ),
                  Text(
                    '${widget.price} ؋',
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
