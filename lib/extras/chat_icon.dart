import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

FaIcon? chatIcon(String val) {
  switch (val) {
    case "Income":
      return FaIcon(FontAwesomeIcons.landmark, color: Colors.white);

    case "Expense":
      return FaIcon(FontAwesomeIcons.creditCard, color: Colors.white);

    case "Savings":
      return FaIcon(FontAwesomeIcons.piggyBank, color: Colors.white);

    case "Investment":
      return FaIcon(FontAwesomeIcons.chartArea, color: Colors.white);

    default:
      return null;
  }
}
