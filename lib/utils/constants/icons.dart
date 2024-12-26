import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

abstract class AppIcons {
  static final google = SvgPicture.asset(AppIconPath.google);
  static final background = SvgPicture.asset(
    AppIconPath.background,
    fit: BoxFit.cover,
  );
  static final illustration = SvgPicture.asset(AppIconPath.illustration);
}

abstract class AppIconPath {
  static final String google = 'assets/images/authentication/google.svg';
  static final String background =
      'assets/images/authentication/background.svg';
  static final String illustration =
      'assets/images/authentication/illustration.svg';
}
