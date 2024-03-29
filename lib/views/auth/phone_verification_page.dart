import 'package:flutter/material.dart';
import 'package:phone_otp_verification/phone_verification.dart';
import 'package:soeasy/common/app_style.dart';
import 'package:soeasy/constants/constants.dart';

class PhoneVerificationPage extends StatelessWidget {
  const PhoneVerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PhoneVerification(
      isFirstPage: false,
      enableLogo: false,
      themeColor: kPrimary,
      backgroundColor: kLightWhite,
      initialPageText: "Verify Phone Number",
      initialPageTextStyle: appStyle(
        20,
        kPrimary,
        FontWeight.bold,
      ),
      textColor: kDark,
      onSend: (String value) {},
      onVerification: (String value) {},
    );
  }
}
