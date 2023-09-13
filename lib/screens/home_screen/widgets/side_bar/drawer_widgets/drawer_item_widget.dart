import 'package:flutter/material.dart';

class DrawerItemWidget extends StatelessWidget {
  const DrawerItemWidget({
    super.key,
    required this.onTap,
    required this.index,
    required this.currentDrawerIndex,
    required this.icon,
    required this.title,
  });

  final Function(int) onTap;
  final int index;
  final int currentDrawerIndex;
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap(index);
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 5),
        padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
        child: Row(
          children: [
            index == currentDrawerIndex
                ? Container(
                    width: 2,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  )
                : const SizedBox(),
            SizedBox(
              width: index == currentDrawerIndex ? 10 : 13,
            ),
            Icon(
              icon,
              color: Theme.of(context).iconTheme.color,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ],
        ),
      ),
    );
  }
}
