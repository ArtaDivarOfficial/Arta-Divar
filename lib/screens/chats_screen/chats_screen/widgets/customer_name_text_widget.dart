import 'package:flutter/material.dart';

class CustomerNameTextWidget extends StatelessWidget {
  const CustomerNameTextWidget({
    super.key,
    this.customerName = 'آرتا دیوار',
  });

  final String? customerName;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 150),
      child: Text(
        'آرتا دیوار',
        style: Theme.of(context).textTheme.titleMedium,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
