import 'package:flutter/material.dart';

class CustomPriceTextField extends StatelessWidget {
  const CustomPriceTextField({
    super.key,
    required this.text,
    required this.hintText,
    required this.priceSaleType,
    required this.maxLength,
    required this.hasError,
    this.textInputType,
  });
  final String text;
  final String hintText;
  final String priceSaleType;
  final int maxLength;
  final bool hasError;
  final TextInputType? textInputType;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            text,
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Row(children: [
            Expanded(
              flex: 3,
              child: TextFormField(
                keyboardType: TextInputType.text,
                controller: TextEditingController(),
                onTap: () {},
                onChanged: (value) {},
                focusNode: FocusNode(),
                enabled: true,
                maxLength: 10,
                decoration: InputDecoration(
                  counterStyle: Theme.of(context).textTheme.labelMedium,
                  hintText: hintText,
                  errorText: hasError ? 'لطفا قیمت را وارد نمایید' : null,
                  hintStyle: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Colors.grey,
                      ),
                  contentPadding: const EdgeInsets.symmetric(
                      horizontal: 20, vertical: 17.5),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey.shade400,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey.shade400,
                    ),
                  ),
                  errorBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              flex: 1,
              child: TextFormField(
                keyboardType: TextInputType.text,
                controller: TextEditingController(),
                onTap: () {},
                onChanged: (value) {},
                focusNode: FocusNode(),
                enabled: false,
                maxLength: 10,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  counterStyle: Theme.of(context)
                      .textTheme
                      .labelMedium!
                      .copyWith(color: Colors.transparent),
                  hintText: priceSaleType,
                  hintStyle: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Colors.black,
                      ),
                  contentPadding: const EdgeInsets.symmetric(
                      horizontal: 20, vertical: 12.5),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey.shade400,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey.shade400,
                    ),
                  ),
                  errorBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,
                    ),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey.shade400,
                    ),
                  ),
                ),
              ),
            ),
          ]),
        ),
      ],
    );
  }
}
