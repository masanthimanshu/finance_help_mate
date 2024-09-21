import 'package:flutter/material.dart';

import '/view/add_transaction/add_transaction.dart';
import '/view/auth/phone_screen.dart';
import '/view/get_started/get_started_screen.dart';
import '/view/home/home_screen.dart';
import '/view/profile/profile_screen.dart';

final Map<String, WidgetBuilder> appRoutes = {
  "/home": (e) => const HomeScreen(),
  "/auth": (e) => const PhoneScreen(),
  "/": (e) => const GetStartedScreen(),
  "/profile": (e) => const ProfileScreen(),
  "/add-transaction": (e) => const AddTransaction(),
};
