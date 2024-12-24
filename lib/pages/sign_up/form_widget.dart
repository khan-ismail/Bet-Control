import 'package:betcontrol/components/form_fields/text_field.dart';
import 'package:betcontrol/pages/sign_up/sign_up_controller.dart';
import 'package:flutter/material.dart';

class FormWidget extends StatelessWidget {
  FormWidget({super.key});

  final xController = SignUpController.to;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppTextField(
            title: 'Full Name',
            controller: xController.nameConroller,
            hintText: 'Enter your full name',
          ),
        ],
      ),
    );
  }
}
