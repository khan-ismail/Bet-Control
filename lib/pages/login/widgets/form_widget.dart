import 'package:betcontrol/components/form_fields/field_heading.dart';
import 'package:betcontrol/components/form_fields/text_field.dart';
import 'package:betcontrol/pages/login/controllers/login_controller.dart';
import 'package:betcontrol/pages/sign_up/sign_up_page.dart';
import 'package:betcontrol/utils/constants/icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FormWidget extends StatelessWidget {
  FormWidget({super.key});

  final xController = LoginController.to;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        spacing: 20,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppTextField(
            title: 'Email Address',
            controller: xController.emailConroller,
            hintText: 'Enter your email address',
          ),
          Column(
            spacing: 5,
            children: [
              Obx(() {
                return AppTextField(
                  title: 'Password',
                  controller: xController.passwordConroller,
                  hintText: 'Enter your password',
                  suffixIcon: GestureDetector(
                    onTap: xController.updatePasswordObscureTextFlag,
                    child: xController.passwordObscureText.value
                        ? AppIcons.activeEyeSlash
                        : AppIcons.inActiveEyeSlash,
                  ),
                  obscureText: xController.passwordObscureText.value,
                );
              }),
              Align(
                alignment: Alignment.centerRight,
                child: FieldHeading(title: 'Forgot Password'),
              ),
              SizedBox(height: 20),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 2),
                child: Text(
                  'Login',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.surface,
                      ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              'Or',
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(fontWeight: FontWeight.w600),
            ),
          ),
          OutlinedButton.icon(
            onPressed: () {},
            label: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Text(
                  'Sign Up with Google',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
            ),
            icon: AppIcons.google,
          ),
          Align(
            alignment: Alignment.center,
            child: GestureDetector(
              onTap: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => SignUpPage(),
                ),
              ),
              child: RichText(
                text: TextSpan(
                  text: '',
                  children: [
                    _normalText(context, 'Don\'t have an account? '),
                    _boldText(context, 'Sign Up'),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }

  TextSpan _boldText(BuildContext context, String data) {
    return TextSpan(
      text: data,
      style: Theme.of(context).textTheme.labelSmall!.copyWith(
            fontWeight: FontWeight.bold,
          ),
    );
  }

  TextSpan _normalText(BuildContext context, String data) {
    return TextSpan(
      text: data,
      style: Theme.of(context).textTheme.labelSmall!.copyWith(
            fontWeight: FontWeight.w500,
            color: Theme.of(context).colorScheme.onSurfaceVariant,
          ),
    );
  }
}
