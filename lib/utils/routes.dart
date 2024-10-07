import 'package:finance_help_mate/root/custom_root.dart';
import 'package:flutter/material.dart';

import '/view/auth/phone_screen.dart';
import '/view/chat/chat_screen.dart';
import '/view/home/home_screen.dart';

final Map<String, WidgetBuilder> appRoutes = {
  "/": (e) => const CustomRoot(),
  "/home": (e) => const HomeScreen(),
  "/auth": (e) => const PhoneScreen(),
  "/add-transaction": (e) => const ChatScreen(),
};
