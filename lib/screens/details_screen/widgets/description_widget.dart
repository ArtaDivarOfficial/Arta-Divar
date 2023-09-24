import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:url_launcher/url_launcher.dart';

class DescriptionWidget extends StatelessWidget {
  const DescriptionWidget({
    Key? key,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title.isNotEmpty
            ? Text(
                title,
                style: Theme.of(context).textTheme.titleMedium,
              )
            : const SizedBox(),
        Linkify(
          onOpen: (link) async {
            if (!await launchUrl(Uri.parse(link.url))) {
              throw Exception('Could not launch ${link.url}');
            }
          },
          text: subTitle,
          style: Theme.of(context).textTheme.titleMedium,
          linkStyle: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: Colors.blue,
                decoration: TextDecoration.underline,
              ),
        ),
        Divider(
          height: 15,
          color: Colors.grey.shade500,
        )
      ],
    );
  }
}
