import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum CustomTextStyle { heading, mediumHeading, subText }

extension CustomTextStyleExtension on CustomTextStyle {
  TextStyle get style {
    switch (this) {
      case CustomTextStyle.heading:
        return GoogleFonts.lora(fontSize: 32, fontWeight: FontWeight.bold);

      case CustomTextStyle.mediumHeading:
        return GoogleFonts.lora(fontSize: 28, fontWeight: FontWeight.bold);

      case CustomTextStyle.subText:
        return const TextStyle(fontSize: 18);
    }
  }
}
