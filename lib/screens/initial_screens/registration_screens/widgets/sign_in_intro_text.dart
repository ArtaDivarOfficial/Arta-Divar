import 'package:flutter/material.dart';

class SignInIntroText extends StatelessWidget {
  const SignInIntroText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Text(
        'برای ورود و یا ثبت نام آرتا دیوار شماره موبایل خود را وارد نمایید',
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
      ),
    );
  }
}
