import 'package:finance_help_mate/components/auth_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return AuthWrapper(
      title: "Verify Phone",
      nextBtn: () {
        Navigator.pushNamedAndRemoveUntil(context, "/home", (_) => false);
      },
      subTitle: "Enter OTP sent to your phone number - \n +91 - 8929894163",
      component: PinCodeTextField(
        length: 6,
        autoFocus: true,
        appContext: context,
        pinTheme: _otpTheme,
        keyboardType: TextInputType.number,
      ),
    );
  }
}

final _otpTheme = PinTheme(
  activeColor: Colors.black,
  selectedColor: Colors.grey,
  inactiveColor: Colors.black,
  shape: PinCodeFieldShape.box,
  borderRadius: BorderRadius.circular(5),
);
