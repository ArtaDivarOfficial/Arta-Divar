import 'package:flutter/material.dart';

class CustomPriceTextField extends StatelessWidget {
  const CustomPriceTextField({
    super.key,
    required this.title,
    required this.hintText,
    required this.priceSaleType,
    this.hasError = false,
    this.errorText,
    required this.onChange,
    required this.onTapPriceSaleType,
  });
  final String title;
  final String hintText;
  final String priceSaleType;
  final bool? hasError;
  final String? errorText;
  final Function(double) onChange;
  final Function() onTapPriceSaleType;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Text(
              title,
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
                  keyboardType: TextInputType.number,
                  controller: TextEditingController(),
                  onTap: () {},
                  onChanged: (value) {
                    onChange(double.parse(value));
                  },
                  focusNode: FocusNode(),
                  enabled: true,
                  maxLength: 10,
                  decoration: InputDecoration(
                    counterStyle: Theme.of(context).textTheme.labelMedium,
                    hintText: hintText,
                    errorText: hasError! ? errorText : null,
                    hintStyle:
                        Theme.of(context).textTheme.titleMedium!.copyWith(
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
                child: GestureDetector(
                  onTap: onTapPriceSaleType,
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
                      hintStyle:
                          Theme.of(context).textTheme.titleMedium!.copyWith(
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
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
