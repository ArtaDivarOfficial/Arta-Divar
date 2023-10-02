import 'package:divar/screens/initial_screens/onboarding_screen/widgets/title_with_images_widget.dart';
import 'package:flutter/material.dart';

class TitleWithEntireScreenImageWidget extends StatefulWidget {
  const TitleWithEntireScreenImageWidget({
    super.key,
    required this.pageController,
    required this.onPageChanged,
  });

  final PageController pageController;
  final Function(dynamic value) onPageChanged;

  @override
  State<TitleWithEntireScreenImageWidget> createState() =>
      _TitleWithEntireScreenImageWidgetState();
}

class _TitleWithEntireScreenImageWidgetState
    extends State<TitleWithEntireScreenImageWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        controller: widget.pageController,
        itemCount: 3,
        onPageChanged: widget.onPageChanged,
        itemBuilder: (context, index) {
          return TitleWithImagesWidget(index: index);
        },
      ),
    );
  }
}
