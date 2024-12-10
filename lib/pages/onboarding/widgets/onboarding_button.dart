import 'package:flutter/material.dart';

class OnboardingButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;
  const OnboardingButton({
    super.key,
    required this.buttonText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xff1A3B5D),
          foregroundColor: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Text(
            buttonText,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
