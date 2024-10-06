import 'package:finance_help_mate/view/get_started/get_started_screen.dart';
import 'package:finance_help_mate/view/home/home_screen.dart';
import 'package:finance_help_mate/view/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'root_controller.dart';

class CustomRoot extends ConsumerWidget {
  const CustomRoot({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final res = ref.watch(rootProvider);

    if (!res.hasValue) return const SplashScreen();

    if (res.value!) {
      return const HomeScreen();
    } else {
      return const GetStartedScreen();
    }
  }
}
