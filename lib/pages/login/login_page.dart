import 'package:betcontrol/pages/login/widgets/form_widget.dart';
import 'package:betcontrol/utils/constants/icons.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome Back'),
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
                Center(child: AppIcons.loginIllustration),
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
