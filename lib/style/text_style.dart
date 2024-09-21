import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum CustomTextStyle {
  heading,
  subText,
  smallHeading,
  largeHeading,
  mediumHeading,
  extraSmallHeading,
}

extension CustomTextStyleExtension on CustomTextStyle {
  TextStyle get style {
    switch (this) {
      case CustomTextStyle.heading:
        return GoogleFonts.lora(fontSize: 32, fontWeight: FontWeight.bold);

      case CustomTextStyle.subText:
        return const TextStyle(fontSize: 16);

      case CustomTextStyle.smallHeading:
        return GoogleFonts.lora(fontSize: 20, fontWeight: FontWeight.bold);

      case CustomTextStyle.largeHeading:
        return GoogleFonts.lora(fontSize: 28, fontWeight: FontWeight.bold);

      case CustomTextStyle.mediumHeading:
        return GoogleFonts.lora(fontSize: 24, fontWeight: FontWeight.bold);

      case CustomTextStyle.extraSmallHeading:
        return GoogleFonts.lora(fontSize: 16, fontWeight: FontWeight.bold);
    }
  }
}
