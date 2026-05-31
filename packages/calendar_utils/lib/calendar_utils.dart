library calendar_utils;

import 'package:intl/intl.dart';

export 'src/calendar_list.dart';
export 'src/dates_generator.dart';

String getFullMonthName(DateTime date, [String? locale]) {
  return date.format('MMMM y', locale);
}

String getDayOfMonth(DateTime date) {
  return date.format('d');
}

String getDayOfWeekName(DateTime date) {
  return date.format('E');
}

String getWeekDayAbbreviation(DateTime date) {
  return date.format('E');
}

bool isTheSameDay(DateTime d1, DateTime d2) {
  return d1.year == d2.year && d1.month == d2.month && d1.day == d2.day;
}

extension DateUtils on DateTime {
  String format([String? pattern, String? locale]) {
    return DateFormat(pattern, locale).format(this);
  }

  bool get isToday => isTheSameDay(this, DateTime.now());

  bool get isTomorrow {
    final tomorrow = DateTime.now().add(const Duration(days: 1));
    return tomorrow.day == day && tomorrow.month == month && tomorrow.year == year;
  }

  bool get isYesterday {
    final yesterday = DateTime.now().subtract(const Duration(days: 1));
    return yesterday.day == day && yesterday.month == month && yesterday.year == year;
  }

  bool get isFuture => isAfter(DateTime.now());

  bool get isPast => isBefore(DateTime.now());
}

String formatTimeRange(DateTime start, DateTime end, {bool format24Hours = false}) {
  final startHour = format24Hours
      ? start.hour.toString().padLeft(2, '0')
      : (start.hour % 12 == 0 ? '12' : (start.hour % 12).toString());
  final endHour =
      format24Hours ? end.hour.toString().padLeft(2, '0') : (end.hour % 12 == 0 ? '12' : (end.hour % 12).toString());
  final startMinute = start.minute.toString().padLeft(2, '0');
  final endMinute = end.minute.toString().padLeft(2, '0');
  final startPeriod = format24Hours ? '' : DateFormat('a').format(start).toLowerCase();
  final endPeriod = format24Hours ? '' : DateFormat('a').format(end).toLowerCase();
  return '$startHour:$startMinute$startPeriod - $endHour:$endMinute$endPeriod';
}

// return the weekdays and the currentWeekdayIndex
(List<DateTime>, int) getWeekdaysStartingOnSunday(DateTime now) {
  const weekStartDay = 1;

  final currentWeekday = now.weekday == DateTime.sunday ? weekStartDay : now.weekday + 1;
  final currentWeekdayIndex = currentWeekday - 1;

  final startDay = now.subtract(Duration(days: currentWeekday - weekStartDay));
  final weekdays = <DateTime>[];

  weekdays.add(startDay);

  for (int i = 1; i <= 6; ++i) {
    weekdays.add(startDay.add(Duration(days: i)));
  }

  return (weekdays, currentWeekdayIndex);
}

// return the weekdays and the currentWeekdayIndex
(List<DateTime>, int) getWeekdaysStartingOnMonday(DateTime now) {
  final weekdays = <DateTime>[];

  // Find the first Monday on or after the current date
  final monday = now.subtract(Duration(days: now.weekday - DateTime.monday));
  final currentWeekdayIndex = now.weekday - 1;

  // Add dates for Monday to Sunday
  for (int i = 0; i < 7; i++) {
    weekdays.add(monday.add(Duration(days: i)));
  }

  return (weekdays, currentWeekdayIndex);
}

List<String> getLocalizedWeekdayNames(List<DateTime> days, String locale) {
  final dateFormat = DateFormat.E(locale);
  return days.map((day) => dateFormat.format(day)).toList();
}

List<DateTime> getWeekdays() {
  final days = <DateTime>[];

  for (int i = 0; i < 7; i++) {
    final day = DateTime(2023, 10, 1 + i); // Any date to get the weekday
    days.add(day);
  }

  return days;
}

List<String> getLastSevenDaysLocalizedWeekdayNames(String locale) {
  final localizedWeekdayNames = <String>[];
  final dateFormat = DateFormat.E(locale);

  for (int i = 6; i >= 0; i--) {
    final day = DateTime.now().subtract(Duration(days: i));
    final localizedDayName = dateFormat.format(day);
    localizedWeekdayNames.add(localizedDayName);
  }

  return localizedWeekdayNames;
}
