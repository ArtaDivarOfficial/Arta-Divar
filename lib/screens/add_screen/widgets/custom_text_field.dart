import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.text,
    required this.hintText,
    required this.maxLength,
    required this.hasError,
    this.textInputType,
  });
  final String text;
  final String hintText;
  final int maxLength;
  final bool hasError;
  final TextInputType? textInputType;

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
              text,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: ListTile(
              title: TextFormField(
                keyboardType: TextInputType.text,
                controller: TextEditingController(),
                onTap: () {},
                onChanged: (value) {},
                focusNode: FocusNode(),
                enabled: true,
                maxLength: maxLength,
                decoration: InputDecoration(
                  counterStyle: Theme.of(context).textTheme.labelMedium,
                  hintText: hintText,
                  errorText: hasError ? 'لطفا عنوان را وارد نمایید' : null,
                  hintStyle: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Colors.grey,
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
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
