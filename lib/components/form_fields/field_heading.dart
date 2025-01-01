import 'package:betcontrol/core/theme/app_pallet.dart';
import 'package:flutter/material.dart';

class FieldHeading extends StatelessWidget {
  final String title;
  const FieldHeading({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.displaySmall!.copyWith(
            fontWeight: FontWeight.w600,
            color: AppPallete.primaryContainer,
          ),
    );
  }
}
