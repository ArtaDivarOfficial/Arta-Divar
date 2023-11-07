import 'dart:ui' as ui;

import 'package:flutter/material.dart';

class SearchTextFieldWidget extends StatefulWidget {
  const SearchTextFieldWidget({
    super.key,
    required this.text,
    required this.hintText,
    required this.focusNodeSearchTextField,
    required this.onChangedSearch,
    required this.onSubmitted,
  });

  final String text;
  final String hintText;
  final FocusNode focusNodeSearchTextField;
  final Function(String) onChangedSearch;
  final Function(String) onSubmitted;

  @override
  State<SearchTextFieldWidget> createState() => _SearchTextFieldWidgetState();
}

class _SearchTextFieldWidgetState extends State<SearchTextFieldWidget> {
  TextEditingController textEditingController = TextEditingController();
  bool isTextEditingControllerLoaded = false;

  @override
  Widget build(BuildContext context) {
    if (!isTextEditingControllerLoaded) {
      textEditingController = TextEditingController(text: widget.text);
      isTextEditingControllerLoaded = true;
    }
    return TextField(
      onChanged: widget.onChangedSearch,
      focusNode: widget.focusNodeSearchTextField,
      controller: textEditingController,
      textDirection: ui.TextDirection.rtl,
      textInputAction: TextInputAction.search,
      onSubmitted: widget.onSubmitted,
      onTap: () {
        if (textEditingController.selection ==
            TextSelection.fromPosition(
                TextPosition(offset: textEditingController.text.length - 1))) {
          setState(() {
            textEditingController.selection = TextSelection.fromPosition(
                TextPosition(offset: textEditingController.text.length));
          });
        }
      },
      style: Theme.of(context).textTheme.titleMedium!.copyWith(
            color:
                Theme.of(context).textTheme.titleMedium!.color!.withOpacity(1),
          ),
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: widget.hintText,
        hintStyle: Theme.of(context).textTheme.titleMedium!.copyWith(
              color: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .color!
                  .withOpacity(0.5),
            ),
      ),
    );
  }
}
