import 'package:betcontrol/core/storage/storage.dart';
import 'package:betcontrol/utils/constants/app_string.dart';
import 'package:hive_flutter/hive_flutter.dart';

class AppHiveImpl implements Storage {
  Box? box;

  static intiHive() async {
    await Hive.initFlutter();
  }

  @override
  Future<void> init() async {
    box = await Hive.openBox(AppString.hiveBox);
  }

  @override
  Future<void> save<T>({required String? key, T? value}) async {
    try {
      if (key == null || key == '') {
        return;
      }

      if (box == null) {
        await init();
      }

      box?.put(key, value);
    } catch (e) {
      throw Exception('Unable to save data to hive');
    }
  }

  @override
  Future<T?> get<T>({required String? key}) async {
    try {
      if (key == null || key == '') {
        return null;
      }

      if (box == null) {
        await init();
      }

      return box?.get(key);
    } catch (e) {
      throw Exception('Unable to get data from hive');
    }
  }

  @override
  Future<void> delete({String? key}) async {
    try {
      if (key == null || key == '') {
        return;
      }

      if (box == null) {
        await init();
      }

      box?.delete(key);
    } catch (e) {
      throw Exception('Unable to get data from hive');
    }
  }

  @override
  Future<void> clear() async {
    try {
      if (box == null) {
        await init();
      }
      box?.clear();
      box = null;
    } catch (e) {
      throw Exception('Unable to get data from hive');
    }
  }
}
