import 'package:intl/intl.dart';

abstract class DateFormats {
  static DateFormat ddmmyyyy = DateFormat('dd-MM-yyyy');
}

abstract class DateFormatter {
  static DateTime stringToDate(DateFormat format, String date) {
    return format.tryParse(date) ?? DateTime.now();
  }

  static String dateToString(DateFormat format, DateTime date) {
    return format.format(date);
  }
}
