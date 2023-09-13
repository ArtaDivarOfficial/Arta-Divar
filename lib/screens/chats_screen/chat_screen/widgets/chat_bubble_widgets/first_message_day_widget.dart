import 'package:flutter/material.dart';

class FirstMessageDayWidget extends StatelessWidget {
  const FirstMessageDayWidget({
    super.key,
    this.showDay = false,
    this.time = 0,
  });

  final bool? showDay;
  final num? time;

  @override
  Widget build(BuildContext context) {
    return showDay!
        ? Column(
            children: [
              Text(
                'سه شنبه',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: Colors.black),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          )
        : const SizedBox();
  }
}
