import 'package:betcontrol/pages/sign_up/form_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Account'),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: SvgPicture.asset(
              'assets/images/authentication/background.svg', // Path to your SVG file
              fit: BoxFit.cover, // Adjust the fit as needed
            ),
          ),
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 20,
                children: [
                  Center(
                      child: SvgPicture.asset(
                          'assets/images/authentication/Illustration.svg')),
                  FormWidget(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
