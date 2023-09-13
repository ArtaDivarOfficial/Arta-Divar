import 'package:divar/screens/chats_screen/chats_screen/widgets/customer_profile_image_widget.dart';
import 'package:divar/screens/chats_screen/chats_screen/widgets/online_container_widget.dart';
import 'package:flutter/material.dart';

class CustomerProfileImageAndOnlineStatusWidget extends StatelessWidget {
  const CustomerProfileImageAndOnlineStatusWidget({
    super.key,
    this.customerProfileImageUrl = 'assets/app_logo/app_logo.png',
    this.customerOnlineStatus = false,
  });

  final String? customerProfileImageUrl;
  final bool? customerOnlineStatus;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomerProfileImageWidget(
          customerProfileImageUrl: customerProfileImageUrl,
        ),
        OnlineContainerWidget(
          customerOnlineStatus: customerOnlineStatus,
        ),
      ],
    );
  }
}
