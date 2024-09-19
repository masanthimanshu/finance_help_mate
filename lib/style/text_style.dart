import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum CustomTextStyle { heading, subHeading }

extension CustomTextStyleExtension on CustomTextStyle {
  TextStyle get style {
    switch (this) {
      case CustomTextStyle.heading:
        return GoogleFonts.lora(fontSize: 32, fontWeight: FontWeight.bold);

      case CustomTextStyle.subHeading:
        return const TextStyle(fontSize: 18);
    }
  }
}
