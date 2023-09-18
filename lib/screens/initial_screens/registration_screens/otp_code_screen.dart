import 'package:divar/constants/colors.dart';
import 'package:divar/screens/initial_screens/registration_screens/widgets/arta_divar_image.dart';
import 'package:divar/screens/initial_screens/registration_screens/widgets/custom_elevated_button.dart';
import 'package:divar/screens/initial_screens/registration_screens/widgets/custom_icon_button.dart';
import 'package:divar/screens/initial_screens/registration_screens/widgets/privacy_policy_text.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpCodeScreen extends StatelessWidget {
  const OtpCodeScreen({super.key});
  static const String id = '/otp_code_screen';

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ArtaDivarImage(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'پیامی حاوی کد شش رقمی به شماره تماس ۰۷۹۷۶۲۷۶۵۱ فرستاده شده است، برای ادامه لطفا کد را وارد نمایید.',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
              ),
            ),
            const SizedBox(height: 30),
            //! OTPTextField ...
            //! OTPTextField ...
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: PinCodeTextField(
                keyboardType: TextInputType.number,
                animationType: AnimationType.scale,
                cursorColor: kLightPrimaryColor,
                pinTheme: PinTheme(
                  activeColor: kLightSecondaryColor,
                  inactiveColor: kLightPrimaryColor,
                  selectedColor: kLightSecondaryColor,
                ),
                cursorHeight: 20,
                showCursor: true,
                appContext: context,
                length: 6,
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
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
