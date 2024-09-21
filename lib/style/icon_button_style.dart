import 'package:flutter/material.dart';

const filledIconButton = ButtonStyle(
  shape: WidgetStatePropertyAll(CircleBorder()),
  backgroundColor: WidgetStatePropertyAll(Colors.black),
  foregroundColor: WidgetStatePropertyAll(Colors.white),
);

const outlinedIconButton = ButtonStyle(
  shape: WidgetStatePropertyAll(CircleBorder(
    side: BorderSide(width: 2),
  )),
);
