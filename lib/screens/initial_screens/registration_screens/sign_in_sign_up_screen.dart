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
        child: Column(
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
        ),
      ),
    );
  }
}
