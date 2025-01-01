import 'package:betcontrol/components/form_fields/field_heading.dart';
import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final String title;
  final String hintText;
  final TextEditingController controller;
  final String? initialValue;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final Widget? suffixIcon;
  final bool obscureText;

  const AppTextField(
      {super.key,
      required this.title,
      required this.controller,
      required this.hintText,
      this.initialValue,
      this.validator,
      this.onChanged,
      this.suffixIcon,
      this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      spacing: 5,
      children: [
        FieldHeading(title: title),
        TextFormField(
          controller: controller,
          initialValue: initialValue,
          validator: validator,
          onChanged: (value) {
            controller.text = value;

            if (onChanged != null) {
              onChanged!(value);
            }
          },
          obscureText: obscureText,
          obscuringCharacter: '*',
          decoration: InputDecoration(
            hintText: hintText,
            suffixIcon: Padding(
              padding: const EdgeInsets.all(10),
              child: suffixIcon,
            ),
          ),
          style: Theme.of(context).textTheme.headlineSmall!,
        ),
      ],
    );
  }
}
