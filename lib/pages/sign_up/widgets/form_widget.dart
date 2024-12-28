import 'package:betcontrol/components/form_fields/check_box_field.dart';
import 'package:betcontrol/components/form_fields/date_picker_field.dart';
import 'package:betcontrol/components/form_fields/text_field.dart';
import 'package:betcontrol/pages/login/login_page.dart';
import 'package:betcontrol/pages/sign_up/controllers/sign_up_controller.dart';
import 'package:betcontrol/utils/constants/icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FormWidget extends StatelessWidget {
  FormWidget({super.key});

  final xController = SignUpController.to;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        spacing: 20,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppTextField(
            title: 'Full Name',
            controller: xController.nameConroller,
            hintText: 'Enter your full name',
          ),
          AppTextField(
            title: 'Email Address',
            controller: xController.emailConroller,
            hintText: 'Enter your email address',
          ),
          AppDatePickerField(
            title: 'Date Of Birth',
            controller: xController.dobConroller,
            hintText: 'DD-MM-YYYY',
          ),
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
          Obx(() {
            return AppTextField(
              title: 'Confirm Password',
              controller: xController.confirmPasswordConroller,
              hintText: 'Re-enter your password',
              suffixIcon: GestureDetector(
                onTap: xController.updateConfirmPasswordObscureTextFlag,
                child: xController.confirmPasswordObscureText.value
                    ? AppIcons.activeEyeSlash
                    : AppIcons.inActiveEyeSlash,
              ),
              obscureText: xController.confirmPasswordObscureText.value,
            );
          }),
          Obx(
            () => AppCheckBoxField(
              checkboxValue: xController.isAgreedTC.value,
              onChanged: (value) {
                xController.isAgreedTC.value = value ?? false;
              },
              titleText: 'I agree to the Terms and Conditions',
              title: RichText(
                text: TextSpan(
                  text: '',
                  children: [
                    _normalText(context, 'I agree to the '),
                    _boldText(context, 'Terms'),
                    _normalText(context, ' and '),
                    _boldText(context, 'Conditions'),
                  ],
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 2),
                child: Text(
                  'Create Account',
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
                  builder: (context) => LoginPage(),
                ),
              ),
              child: RichText(
                text: TextSpan(
                  text: 'Have an account? ',
                  children: [
                    TextSpan(
                      text: 'Login',
                      style: Theme.of(context).textTheme.labelSmall!.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                  style: Theme.of(context).textTheme.labelSmall!.copyWith(
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                      ),
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
      style: Theme.of(context).textTheme.headlineSmall!.copyWith(
            fontWeight: FontWeight.w800,
          ),
    );
  }

  TextSpan _normalText(BuildContext context, String data) {
    return TextSpan(
      text: data,
      style: Theme.of(context).textTheme.headlineSmall!.copyWith(
            color: Theme.of(context).colorScheme.onSecondary,
          ),
    );
  }
}
