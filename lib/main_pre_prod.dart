import 'dart:async';

import 'package:bet_control/bet_control_app.dart';
import 'package:bet_control/core/storage/app_hive/app_hive_impl.dart';
import 'package:bet_control/utils/constants/env_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppHiveImpl.intiHive();

  FlavorConfig(
    name: EnvConstants.preProd,
    color: Colors.orange.shade600,
  );
  runApp(const ProviderScope(child: BetControlApp()));
}
