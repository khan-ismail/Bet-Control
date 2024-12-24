import 'package:betcontrol/core/theme/theme.dart';
import 'package:betcontrol/pages/onboarding/onboarding_page.dart';
import 'package:betcontrol/utils/loggers/logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BetControlApp extends StatelessWidget {
  const BetControlApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      observers: [Logger()],
      child: MaterialApp(
        theme: AppTheme.lightThemeMode,
        home: OnboardingPage(),
      ),
    );
  }
}
