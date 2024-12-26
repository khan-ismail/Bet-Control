import 'package:betcontrol/pages/sign_up/form_widget.dart';
import 'package:betcontrol/utils/constants/icons.dart';
import 'package:flutter/material.dart';

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
            child: AppIcons.background,
          ),
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: ListView(
              padding: const EdgeInsets.all(24),
              children: [
                Center(child: AppIcons.illustration),
                SizedBox(height: 20),
                FormWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
