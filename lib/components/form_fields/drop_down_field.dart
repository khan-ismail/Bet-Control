import 'package:betcontrol/utils/constants/icons.dart';
import 'package:flutter/material.dart';

class AppDropDownField extends StatelessWidget {
  final Set<String> items;
  final void Function(String?)? onChanged;
  final String? value;
  final String hintText;
  final bool isEnabled;
  const AppDropDownField({
    super.key,
    required this.items,
    required this.value,
    required this.hintText,
    this.onChanged,
    this.isEnabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      decoration: InputDecoration(
        enabled: isEnabled,
      ),
      icon: AppIcons.dropdown,
      items: items
          .map(
            (e) => DropdownMenuItem(
              value: e,
              child: Text(
                e,
                style: Theme.of(context).textTheme.headlineSmall!,
              ),
            ),
          )
          .toList(),
      onChanged: isEnabled ? onChanged : null,
      value: value,
      hint: Text(
        hintText,
        style: Theme.of(context).textTheme.headlineSmall!.copyWith(
              color:
                  Theme.of(context).colorScheme.primary.withValues(alpha: 0.7),
            ),
      ),
    );
  }
}
