import 'package:flutter/material.dart';

class OnboardingHeader extends StatelessWidget {
  final String text;
  const OnboardingHeader({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}
