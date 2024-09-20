import 'package:country_code_picker/country_code_picker.dart';
import 'package:finance_help_mate/components/auth_wrapper.dart';
import 'package:finance_help_mate/view/auth/otp_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PhoneScreen extends StatefulWidget {
  const PhoneScreen({super.key});

  @override
  State<PhoneScreen> createState() => _PhoneScreenState();
}

class _PhoneScreenState extends State<PhoneScreen> {
  String _phone = "";
  String _code = "+91";

  @override
  Widget build(BuildContext context) {
    return AuthWrapper(
      title: "Welcome User",
      subTitle: "Enter your phone number to get started -",
      nextBtn: () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const OtpScreen()),
      ),
      component: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 1, color: Colors.grey),
        ),
        child: Row(children: [
          CountryCodePicker(
            favorite: const ["IN"],
            initialSelection: "IN",
            onChanged: (code) => _code = code.dialCode!,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            child: TextField(
              inputFormatters: [LengthLimitingTextInputFormatter(10)],
              keyboardType: TextInputType.number,
              onChanged: (text) => _phone = text,
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: "Phone",
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
