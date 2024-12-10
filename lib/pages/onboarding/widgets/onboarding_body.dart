import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnboardingBody extends StatelessWidget {
  final String title;
  final String image;
  final String description;
  const OnboardingBody({
    super.key,
    required this.image,
    required this.description,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 60),
          SvgPicture.asset(image),
          const SizedBox(height: 60),
          Text(
            description,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
