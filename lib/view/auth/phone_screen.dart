import 'package:country_code_picker/country_code_picker.dart';
import 'package:finance_help_mate/components/auth_wrapper.dart';
import 'package:finance_help_mate/controller/auth_controller.dart';
import 'package:finance_help_mate/utils/validators.dart';
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

  Future<void> _navigateNext() async {
    if (_phone.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Enter Phone Number")),
      );
    } else if (validatePhone(_phone)) {
      final res = await AuthController().sendOtp(
        {"code": _code, "phone": int.parse(_phone)},
      );

      if (!mounted) return;

      if (res != null) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => OtpScreen(verId: res, code: _code, phone: _phone),
          ),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Error Sending OTP")),
        );
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Invalid Phone Number")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return AuthWrapper(
      title: "Welcome User",
      subTitle: "Enter your phone number to get started -",
      nextBtn: _navigateNext,
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
