import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final String title;
  final String hintText;
  final TextEditingController controller;
  final String? initialValue;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  const AppTextField({
    super.key,
    required this.title,
    required this.controller,
    required this.hintText,
    this.initialValue,
    this.validator,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      spacing: 3,
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .displaySmall!
              .copyWith(fontWeight: FontWeight.w600),
        ),
        TextFormField(
          controller: controller,
          initialValue: initialValue,
          validator: validator,
          onChanged: onChanged,
          decoration: InputDecoration(
            hintText: hintText,
          ),
          style: Theme.of(context).textTheme.headlineSmall!,
        ),
      ],
    );
  }
}
