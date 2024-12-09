import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_flavor/flutter_flavor.dart';

class BetControlApp extends StatelessWidget {
  const BetControlApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FlavorBanner(
      child: MaterialApp(
        scrollBehavior: const MaterialScrollBehavior().copyWith(
          dragDevices: {
            PointerDeviceKind.touch,
            PointerDeviceKind.mouse,
            PointerDeviceKind.stylus,
            PointerDeviceKind.trackpad,
          },
        ),
        debugShowCheckedModeBanner: false,
        onGenerateTitle: (context) {
          try {
            print('title:: $context');
          } catch (e) {
            print('Error::: $e');
          }
          return 'Bet Control';
        },
      ),
    );
  }
}
