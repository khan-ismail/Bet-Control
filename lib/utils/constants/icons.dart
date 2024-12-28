import 'package:betcontrol/core/theme/app_pallet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

abstract class AppIcons {
  static final google = SvgPicture.asset(AppIconPath.google);

  static final background = SvgPicture.asset(
    AppIconPath.background,
    fit: BoxFit.cover,
  );

  static final illustration = SvgPicture.asset(AppIconPath.illustration);

  static final dropdown = SvgPicture.asset(
    AppIconPath.dropdown,
    colorFilter: ColorFilter.mode(AppPallete.primary, BlendMode.srcIn),
  );

  static final inActiveEyeSlash =
      SvgPicture.asset(AppIconPath.inActiveEyeSlash);

  static final activeEyeSlash = SvgPicture.asset(AppIconPath.activeEyeSlash);
}

abstract class AppIconPath {
  static final String google = 'assets/images/authentication/google.svg';
  static final String background =
      'assets/images/authentication/background.svg';
  static final String illustration =
      'assets/images/authentication/illustration.svg';
  static final String dropdown = 'assets/icons/dropdown.svg';
  static final String activeEyeSlash = 'assets/icons/active_eye_slash.svg';
  static final String inActiveEyeSlash = 'assets/icons/in_active_eye_slash.svg';
}
