import 'package:divar/constants/colors.dart';
import 'package:divar/screens/initial_screens/registration_screens/widgets/arta_divar_image.dart';
import 'package:divar/screens/initial_screens/registration_screens/widgets/custom_elevated_button.dart';
import 'package:divar/screens/initial_screens/registration_screens/widgets/custom_icon_button.dart';
import 'package:divar/screens/initial_screens/registration_screens/widgets/privacy_policy_text.dart';
import 'package:divar/screens/initial_screens/registration_screens/widgets/sign_in_intro_text.dart';
import 'package:divar/screens/main_screens/add_screen/widgets/custom_text_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignInSignUpScreen extends StatefulWidget {
  const SignInSignUpScreen({super.key});
  static const String id = '/sign_in_sign_up_screen';

  @override
  State<SignInSignUpScreen> createState() => _SignInSignUpScreenState();
}

class _SignInSignUpScreenState extends State<SignInSignUpScreen> {
  bool isSignedIn = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CustomIconButton(
          icon: Icons.close,
          onPressed: () {},
        ),
        actions: [
          CustomIconButton(
            icon: Icons.settings,
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: isSignedIn
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ArtaDivarImage(),
                  const SignInIntroText(),
                  const CustomTextField(
                    text: '',
                    hintText: 'شماره موبایل',
                    maxLength: 10,
                    textInputType: TextInputType.number,
                  ),
                  CustomElevatedButton(
                    text: 'ورود به آرتا دیوار',
                    onPressed: () {},
                  ),
                  const Divider(),
                  const SizedBox(height: 10),
                  const PrivacyPolicyText(),
                ],
              )
            : Column(
                children: [
                  const SignUpIntroText(),
                  const CustomTextField(
                    text: '',
                    hintText: 'نام کامل',
                    maxLength: 64,
                    textInputType: TextInputType.text,
                    topSizedBoxHeight: 0,
                    downSizedBoxHeight: 0,
                  ),
                  const CustomTextField(
                    text: '',
                    hintText: 'نوعیت حساب',
                    maxLength: 32,
                    textInputType: TextInputType.number,
                    topSizedBoxHeight: 0,
                    downSizedBoxHeight: 0,
                  ),
                  const CustomTextField(
                    text: '',
                    hintText: 'شهر',
                    maxLength: 10,
                    textInputType: TextInputType.text,
                    topSizedBoxHeight: 0,
                    downSizedBoxHeight: 0,
                  ),
                  const CustomTextField(
                    text: '',
                    hintText: 'منطقه',
                    maxLength: 128,
                    textInputType: TextInputType.text,
                    topSizedBoxHeight: 0,
                    downSizedBoxHeight: 0,
                  ),
                  const CustomTextField(
                    text: '',
                    hintText: 'شماره تماس',
                    maxLength: 10,
                    textInputType: TextInputType.number,
                    topSizedBoxHeight: 0,
                    downSizedBoxHeight: 0,
                  ),
                  const SizedBox(height: 45),
                  CustomElevatedButton(
                    text: 'ثبت نام در آرتا دیوار',
                    onPressed: () {},
                  ),
                  const SignUpPrivacyPolicyText(),
                ],
              ),
      ),
    );
  }
}

class SignUpIntroText extends StatelessWidget {
  const SignUpIntroText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Text(
        'برای ایجاد حساب کاربری لطفا فورم پایین را کامل نمایید. کد شش رقمی برای تایید ایجاد حساب به شماره تماس شما ارسال خواهد شد.',
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
      ),
    );
  }
}

class SignUpPrivacyPolicyText extends StatefulWidget {
  const SignUpPrivacyPolicyText({
    super.key,
  });

  @override
  State<SignUpPrivacyPolicyText> createState() =>
      _SignUpPrivacyPolicyTextState();
}

class _SignUpPrivacyPolicyTextState extends State<SignUpPrivacyPolicyText> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Text.rich(
        textAlign: TextAlign.center,
        TextSpan(
          text: 'با ثبت نام در آرتا دیوار شما ',
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
                  setState(() {
                    //! Does something...
                    //! Does something...
                  });
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
                  setState(() {
                    //! Does something...
                    //! Does something...
                  });
                },
            ),
            const TextSpan(text: ' آن را می پذیرید.'),
          ],
        ),
      ),
    );
  }
}
