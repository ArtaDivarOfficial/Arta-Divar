import 'package:flutter/material.dart';

class CustomerProfileImageWidget extends StatelessWidget {
  const CustomerProfileImageWidget({
    super.key,
    this.customerProfileImageUrl = 'assets/app_logo/app_logo.png',
    this.imageWidthSize = 65,
    this.imageHeightSize = 65,
  });

  final String? customerProfileImageUrl;
  final double? imageWidthSize;
  final double? imageHeightSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: imageWidthSize!,
      height: imageHeightSize!,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(100),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Padding(
            padding: const EdgeInsets.all(2),
            child: Image.asset('assets/app_logo/app_logo.png'),
          ),
        ),
      ),
    );
  }
}
