abstract class DatesGenerator {
  DatesGenerator._();

  /// ********************* Month *********************
  static List<DateTime> getCurrentMonthDates(DateTime initialDate) =>
      _getMonthDates(DateTime(initialDate.year, initialDate.month, 1));

  static List<DateTime> getNextMonthDates(DateTime current) =>
      _getMonthDates(DateTime(current.year, current.month + 1, 1));

  static List<DateTime> getPrevMonthDates(DateTime current) =>
      _getMonthDates(DateTime(current.year, current.month - 1, 1));

  static List<DateTime> _getMonthDates(DateTime firstDayOfMonth) {
    final int monthDays = DateTime(firstDayOfMonth.year, firstDayOfMonth.month + 1, 0).day;
    final List<DateTime> dates = List.generate(monthDays, (index) {
      return DateTime(firstDayOfMonth.year, firstDayOfMonth.month, index + 1);
    });
    return dates;
  }

  /// ********************* Week *********************
  static DateTime getFirstDayOfWeek(DateTime someDay) {
    final dayOfWeek = someDay.weekday;
    return DateTime(someDay.year, someDay.month, someDay.day).subtract(Duration(days: dayOfWeek - 1));
  }

  static List<DateTime> getWeekDates(DateTime initialDate) {
    return _getNextWeekDates(getFirstDayOfWeek(initialDate));
  }

  static List<DateTime> getNextWeekDates(DateTime lastDayOfTheWeek) {
    final firstDayOfWeek = lastDayOfTheWeek.add(const Duration(days: 1));
    return _getNextWeekDates(firstDayOfWeek);
  }

  static List<DateTime> getPrevWeekDates(DateTime firstDayOfWeek) {
    final lastDayOfTheWeek = firstDayOfWeek.subtract(const Duration(days: 7));
    return _getNextWeekDates(lastDayOfTheWeek);
  }

  static List<DateTime> _getNextWeekDates(DateTime startDate) => _getNextDayDates(startDate, 7);

  /// ********************* Four Days *********************
  static List<DateTime> getFourDayDatesOf(DateTime initialDate) {
    return _getFourDayDates(initialDate);
  }

  static List<DateTime> getNextFourDayDates(DateTime lastDayOfTheFourDay) {
    final firstDayOfNextFourDay = lastDayOfTheFourDay.add(const Duration(days: 1));
    return _getFourDayDates(firstDayOfNextFourDay);
  }

  static List<DateTime> getPrevFourDayDates(DateTime firstDayOfFourDay) {
    final lastDayOfPrevFourDay = firstDayOfFourDay.subtract(const Duration(days: 4));
    return _getFourDayDates(lastDayOfPrevFourDay);
  }

  static List<DateTime> _getFourDayDates(DateTime startDate) => _getNextDayDates(startDate, 4);

  static List<DateTime> _getNextDayDates(DateTime firstDay, int count) {
    final List<DateTime> dates = [];
    for (var i = 0; i < count; i++) {
      final date = firstDay.add(Duration(days: i));
      dates.add(date);
    }
    return dates;
  }
}
