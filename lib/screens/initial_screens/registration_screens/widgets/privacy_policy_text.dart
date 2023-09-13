import 'package:divar/constants/colors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class PrivacyPolicyText extends StatelessWidget {
  const PrivacyPolicyText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Text.rich(
        textAlign: TextAlign.center,
        TextSpan(
          text: 'با ورود و با ثبت نام در آرتا دیوار شما ',
          style: const TextStyle(
            color: kGreyColor,
          ),
          children: [
            TextSpan(
              text: 'شرایط و قوانین ',
              style: const TextStyle(
                decoration: TextDecoration.underline,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  // setState(() {
                  //   //! Does something...
                  //   //! Does something...
                  // });
                },
            ),
            const TextSpan(text: 'استفاده از سرویس های آرتا دیوار و '),
            TextSpan(
              text: 'قوانین حریم خصوصی',
              style: const TextStyle(
                decoration: TextDecoration.underline,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  // setState(() {
                  //   //! Does something...
                  //   //! Does something...
                  // });
                },
            ),
            const TextSpan(text: ' آن را می پذیرید.'),
          ],
        ),
      ),
    );
  }
}
