import 'package:divar/constants/colors.dart';
import 'package:flutter/material.dart';

class ToggleWidget extends StatefulWidget {
  // توگل برای گزینه های دو انتخابی
  // توگل برای گزینه های دو انتخابی
  const ToggleWidget({
    super.key,
    required this.title,
  });
  final String title;
  @override
  State<ToggleWidget> createState() => _ToggleWidgetState();
}

class _ToggleWidgetState extends State<ToggleWidget> {
  bool _isToggled = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: () {
            setState(() {
              _isToggled = !_isToggled;
            });
          },
          contentPadding: const EdgeInsets.fromLTRB(10, 0, 20, 0),
          horizontalTitleGap: 0,
          title: Text(
            widget.title,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          trailing: Switch.adaptive(
            value: _isToggled,
            onChanged: (newValue) {
              setState(() {
                _isToggled = newValue;
              });
            },
          ),
        ),
      ],
    );
  }
}
