import 'package:betcontrol/components/form_fields/drop_down_field.dart';
import 'package:betcontrol/components/form_fields/field_heading.dart';
import 'package:flutter/material.dart';

class AppDatePickerDropDownField extends StatefulWidget {
  final void Function(String?)? onChangedMonth;
  final void Function(String?)? onChangedDate;
  final void Function(String?)? onChangedYear;
  final String? selectedMonth;
  final String? selectedDate;
  final String? selectedYear;

  const AppDatePickerDropDownField({
    super.key,
    this.onChangedMonth,
    this.onChangedDate,
    this.onChangedYear,
    this.selectedMonth,
    this.selectedDate,
    this.selectedYear,
  });

  @override
  State<AppDatePickerDropDownField> createState() =>
      _AppDatePickerDropDownFieldState();
}

class _AppDatePickerDropDownFieldState
    extends State<AppDatePickerDropDownField> {
  final Set<String> months =
      List.generate(12, (index) => (index + 1).toString().padLeft(2, '0'))
          .toSet();
  final Set<String> dates =
      List.generate(31, (index) => (index + 1).toString().padLeft(2, '0'))
          .toSet();
  final Set<String> years =
      List.generate(100, (index) => (DateTime.now().year - index).toString())
          .toSet();

  String? selectedMonth;
  String? selectedDay;
  String? selectedYear;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      spacing: 5,
      children: [
        FieldHeading(title: 'Date Of Birth'),
        Row(
          spacing: 20,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              flex: 1,
              child: AppDropDownField(
                hintText: 'YYYY',
                items: years,
                onChanged: (value) {
                  selectedYear = value;
                  widget.onChangedYear!(value);
                  setState(() {});
                },
                value: widget.selectedYear,
              ),
            ),
            Expanded(
              flex: 1,
              child: AppDropDownField(
                hintText: 'MM',
                items: months,
                isEnabled:
                    selectedYear != null && selectedYear!.trim().isNotEmpty,
                onChanged: (value) {
                  selectedMonth = value;
                  widget.onChangedMonth!(value);
                  setState(() {});
                },
                value: widget.selectedMonth,
              ),
            ),
            Expanded(
              flex: 1,
              child: AppDropDownField(
                hintText: 'DD',
                items: dates,
                isEnabled: selectedMonth != null &&
                    selectedMonth!.trim().isNotEmpty &&
                    selectedYear != null &&
                    selectedYear!.trim().isNotEmpty,
                onChanged: (value) {
                  selectedDay = value;
                  widget.onChangedDate!(value);
                  setState(() {});
                },
                value: widget.selectedDate,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
