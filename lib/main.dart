import 'dart:async';
import 'package:betcontrol/bet_control_app.dart';
import 'package:betcontrol/core/storage/app_hive/app_hive_impl.dart';
import 'package:flutter/material.dart';

FutureOr<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppHiveImpl.intiHive();
  runApp(const BetControlApp());
}
