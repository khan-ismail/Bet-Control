import 'package:flutter/material.dart';

class AppCheckBoxField extends StatelessWidget {
  final bool checkboxValue;
  final String titleText;
  final void Function(bool?)? onChanged;
  final Widget? title;

  const AppCheckBoxField({
    super.key,
    required this.checkboxValue,
    required this.titleText,
    this.onChanged,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 20,
          width: 20,
          child: Checkbox(
            value: checkboxValue,
            onChanged: onChanged,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            side: BorderSide(
              width: 1,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ),
        Flexible(
          child: title ??
              Text(
                titleText,
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      color: Theme.of(context).colorScheme.onSecondary,
                    ),
              ),
        ),
      ],
    );
  }
}
