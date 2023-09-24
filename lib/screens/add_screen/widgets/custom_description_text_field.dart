import 'package:flutter/material.dart';

class CustomDescriptionTextField extends StatelessWidget {
  const CustomDescriptionTextField({
    super.key,
    required this.title,
    required this.hintText,
    this.maxLength = 256,
    this.hasError = false,
    required this.errorText,
    this.textInputType = TextInputType.text,
    required this.onChange,
  });

  final String title;
  final String hintText;
  final int? maxLength;
  final bool? hasError;
  final String? errorText;
  final TextInputType? textInputType;
  final Function(String) onChange;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: ListTile(
              title: TextFormField(
                keyboardType: textInputType,
                controller: TextEditingController(),
                onTap: () {},
                onChanged: onChange,
                focusNode: FocusNode(),
                enabled: true,
                maxLength: 1024,
                maxLines: 5,
                decoration: InputDecoration(
                  counterStyle: Theme.of(context).textTheme.labelMedium,
                  hintText: hintText,
                  errorText: hasError! ? errorText : null,
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
