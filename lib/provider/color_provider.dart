import 'package:flutter/material.dart';

Color categoryColor(String val) {
  switch (val) {
    case "Income":
      return Colors.deepPurpleAccent;

    case "Expense":
      return Colors.teal;

    case "Savings":
      return Colors.lightBlue;

    case "Investment":
      return Colors.green;

    default:
      return Colors.grey;
  }
}
