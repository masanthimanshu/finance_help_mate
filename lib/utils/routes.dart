import 'package:flutter/material.dart';

import '/view/auth/phone_screen.dart';
import '/view/chat/chat_screen.dart';
import '/view/get_started/get_started_screen.dart';
import '/view/home/home_screen.dart';
import '/view/profile/profile_screen.dart';

final Map<String, WidgetBuilder> appRoutes = {
  "/chat": (e) => const ChatScreen(),
  "/home": (e) => const HomeScreen(),
  "/auth": (e) => const PhoneScreen(),
  "/": (e) => const GetStartedScreen(),
  "/profile": (e) => const ProfileScreen(),
};
