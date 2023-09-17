import 'package:flutter/material.dart';

class FilterTabbar extends StatelessWidget {
  const FilterTabbar({
    super.key,
    required this.filterText,
    required this.onFilterPressed,
  });
  final String filterText;
  final Function() onFilterPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.15),
      ),
      child: Container(
        color: Colors.white,
        child: ListTile(
          onTap: onFilterPressed,
          horizontalTitleGap: 0,
          leading: const Icon(
            Icons.filter_alt_rounded,
          ),
          title: Text(
            'فیلتر آگهی ها',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          trailing: SizedBox(
            width: 150,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'مسکونی / کرایی',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: Colors.grey.shade800),
                ),
                const SizedBox(width: 5),
                const Icon(
                  Icons.arrow_back_ios_new_rounded,
                  size: 20,
                ),
              ],
            ),
          ),
        ),
      ),
      // Padding(
      //   padding: const EdgeInsets.symmetric(horizontal: 15),
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     children: [
      //       Text.rich(
      //         TextSpan(
      //           text: 'فیلتر: ',
      //           style: const TextStyle(
      //             fontSize: 15,
      //             fontWeight: FontWeight.w600,
      //           ),
      //           children: [
      //             TextSpan(
      //               text: filterText,
      //               style: const TextStyle(
      //                 fontSize: 12,
      //                 fontWeight: FontWeight.w600,
      //               ),
      //             )
      //           ],
      //         ),
      //         style: const TextStyle(
      //           fontWeight: FontWeight.w600,
      //         ),
      //       ),
      //       IconButton(
      //         onPressed: onFilterPressed,
      //         icon: const Icon(Icons.filter_alt_rounded),
      //         iconSize: 20,
      //         splashRadius: 1,
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
