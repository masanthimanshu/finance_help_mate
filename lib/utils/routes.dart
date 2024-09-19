import 'package:flutter/material.dart';

import '/view/auth/phone_screen.dart';
import '/view/get_started/get_started_screen.dart';

final Map<String, WidgetBuilder> appRoutes = {
  "/auth": (e) => const PhoneScreen(),
  "/": (e) => const GetStartedScreen(),
};
