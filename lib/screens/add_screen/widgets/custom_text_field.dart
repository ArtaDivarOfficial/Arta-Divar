import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    required this.title,
    required this.hintText,
    this.maxLength = 32,
    this.hasError = false,
    required this.errorText,
    this.textInputType = TextInputType.text,
    required this.focusNode,
    required this.textEditingController,
    required this.onChange,
  });

  final String title;
  final String hintText;
  final int? maxLength;
  final bool? hasError;
  final String errorText;
  final TextInputType? textInputType;
  final FocusNode focusNode;
  final TextEditingController textEditingController;
  final Function(String) onChange;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
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
              widget.title,
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
                keyboardType: widget.textInputType,
                controller: widget.textEditingController,
                onTap: () {
                  if (widget.textEditingController.selection ==
                      TextSelection.fromPosition(TextPosition(
                          offset:
                              widget.textEditingController.text.length - 1))) {
                    setState(() {
                      widget.textEditingController.selection =
                          TextSelection.fromPosition(TextPosition(
                              offset:
                                  widget.textEditingController.text.length));
                    });
                  }
                },
                onChanged: widget.onChange,
                focusNode: widget.focusNode,
                enabled: true,
                maxLength: widget.maxLength,
                decoration: InputDecoration(
                  counterStyle: Theme.of(context).textTheme.labelMedium,
                  hintText: widget.hintText,
                  errorText: widget.hasError! ? widget.errorText : null,
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
