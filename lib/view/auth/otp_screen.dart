import 'package:finance_help_mate/components/auth_wrapper.dart';
import 'package:finance_help_mate/controller/auth_controller.dart';
import 'package:finance_help_mate/style/otp_field_style.dart';
import 'package:finance_help_mate/utils/validators.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({
    super.key,
    required this.code,
    required this.verId,
    required this.phone,
  });

  final String code;
  final String verId;
  final String phone;

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  String _otp = "";

  void _navigateNext() async {
    if (_otp.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Enter OTP")),
      );
    } else if (validateOtp(_otp)) {
      final res = await AuthController().verifyOtp({
        "verId": widget.verId,
        "otp": int.parse(_otp),
      });

      if (!mounted) return;

      if (res != null) {
        Navigator.pushNamedAndRemoveUntil(context, "/home", (_) => false);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Could not verify OTP")),
        );
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Invalid OTP")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return AuthWrapper(
      title: "Verify Phone",
      nextBtn: _navigateNext,
      subTitle: "Enter OTP sent to your phone number - \n"
          "${widget.code} - ${widget.phone}",
      component: PinCodeTextField(
        length: 6,
        autoFocus: true,
        appContext: context,
        pinTheme: otpFieldStyle,
        onChanged: (text) => _otp = text,
        keyboardType: TextInputType.number,
        onCompleted: (e) => _navigateNext(),
      ),
    );
  }
}
