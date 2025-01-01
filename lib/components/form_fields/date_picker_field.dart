import 'package:betcontrol/components/form_fields/field_heading.dart';
import 'package:betcontrol/utils/date_formatter.dart';
import 'package:flutter/material.dart';

class AppDatePickerField extends StatelessWidget {
  final String title;
  final String hintText;
  final TextEditingController controller;
  final String? initialValue;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  const AppDatePickerField({
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
      spacing: 5,
      children: [
        FieldHeading(title: title),
        TextFormField(
          controller: controller,
          initialValue: initialValue,
          validator: validator,
          readOnly: true,
          onChanged: onChanged,
          keyboardType: TextInputType.datetime,
          showCursor: false,
          onTap: () async {
            FocusScope.of(context).requestFocus(FocusNode()); // Hide keyboard
            DateTime? pickedDate = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(1990),
              lastDate: DateTime.now(),
            );
            if (pickedDate != null) {
              controller.text =
                  DateFormatter.dateToString(DateFormats.ddmmyyyy, pickedDate);
              if (onChanged != null) {
                onChanged!(controller.text);
              }
            }
          },
          decoration: InputDecoration(
            hintText: hintText,
          ),
          style: Theme.of(context).textTheme.headlineSmall!,
        ),
      ],
    );
  }
}
