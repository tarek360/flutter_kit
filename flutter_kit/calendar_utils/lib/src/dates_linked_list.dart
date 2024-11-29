class _Node {
  _Node(this.dates);

  final List<DateTime> dates;
  _Node? prev;
  _Node? next;
}

abstract class DatesLinkedList {
  DatesLinkedList(this.initialDate) {
    _init();
  }

  final DateTime initialDate;

  late _Node _current;

  List<DateTime> get currentDays => _current.dates;

  void _init() {
    final node = _buildCurrent();
    _current = node;
    _current.next = _buildNext();
    _current.prev = _buildPrev();
  }

  List<DateTime> moveTo(DateTime date) {
    while (date.isAfter(_current.dates.last)) {
      next();
    }
    while (date.isBefore(_current.dates.first)) {
      prev();
    }

    return _current.dates;
  }

  List<DateTime> next() {
    _current.next ??= _buildNext();
    _current = _current.next!;
    return _current.dates;
  }

  List<DateTime> prev() {
    _current.prev ??= _buildPrev();
    _current = _current.prev!;
    return _current.dates;
  }

  _Node _buildCurrent();

  _Node _buildNext();

  _Node _buildPrev();
}

class MonthsLinkedList extends DatesLinkedList {
  MonthsLinkedList(DateTime initialDate) : super(initialDate);

  @override
  _Node _buildCurrent() => _Node(_getMonthDates(DateTime(initialDate.year, initialDate.month, 1)));

  @override
  _Node _buildNext() => _Node(_getMonthDates(DateTime(_current.dates.last.year, _current.dates.last.month + 1, 1)));

  @override
  _Node _buildPrev() => _Node(_getMonthDates(DateTime(_current.dates.first.year, _current.dates.first.month - 1, 1)));

  List<DateTime> _getMonthDates(DateTime firstDayOfMonth) {
    final int monthDays = DateTime(firstDayOfMonth.year, firstDayOfMonth.month + 1, 0).day;
    final List<DateTime> dates = List.generate(monthDays, (index) {
      return DateTime(firstDayOfMonth.year, firstDayOfMonth.month, index + 1);
    });
    return dates;
  }
}

class WeeksLinkedList extends DatesLinkedList {
  WeeksLinkedList(DateTime initialDate) : super(initialDate);

  @override
  _Node _buildCurrent() => _Node(_getCurrentWeekDates());

  @override
  _Node _buildNext() => _Node(_getNextWeekDates(_current.dates.last));

  @override
  _Node _buildPrev() => _Node(_getPrevWeekDates(_current.dates.first));

  List<DateTime> _getCurrentWeekDates() {
    final dayOfWeek = initialDate.weekday;
    final firstDayOfWeek =
        DateTime(initialDate.year, initialDate.month, initialDate.day).subtract(Duration(days: dayOfWeek - 1));
    return _getWeekDates(firstDayOfWeek);
  }

  List<DateTime> _getWeekDates(DateTime startDate) {
    final List<DateTime> dates = [];
    for (var i = 0; i < 7; i++) {
      final date = startDate.add(Duration(days: i));
      dates.add(date);
    }
    return dates;
  }

  List<DateTime> _getNextWeekDates(DateTime lastDayOfTheWeek) {
    final firstDayOfWeek = lastDayOfTheWeek.add(const Duration(days: 1));
    return _getWeekDates(firstDayOfWeek);
  }

  List<DateTime> _getPrevWeekDates(DateTime firstDayOfWeek) {
    final lastDayOfTheWeek = firstDayOfWeek.subtract(const Duration(days: 7));
    return _getWeekDates(lastDayOfTheWeek);
  }
}

class FourDaysLinkedList extends DatesLinkedList {
  FourDaysLinkedList(DateTime initialDate) : super(initialDate);

  @override
  _Node _buildCurrent() => _Node(_getCurrentFourDayDates());

  @override
  _Node _buildNext() => _Node(_getNextFourDayDates(_current.dates.last));

  @override
  _Node _buildPrev() => _Node(_getPrevFourDayDates(_current.dates.first));

  List<DateTime> _getCurrentFourDayDates() {
    return _getFourDayDates(initialDate);
  }

  List<DateTime> _getFourDayDates(DateTime startDate) {
    final List<DateTime> dates = [];
    for (var i = 0; i < 4; i++) {
      final date = startDate.add(Duration(days: i));
      dates.add(date);
    }
    return dates;
  }

  List<DateTime> _getNextFourDayDates(DateTime lastDayOfTheFourDay) {
    final firstDayOfNextFourDay = lastDayOfTheFourDay.add(const Duration(days: 1));
    return _getFourDayDates(firstDayOfNextFourDay);
  }

  List<DateTime> _getPrevFourDayDates(DateTime firstDayOfFourDay) {
    final lastDayOfPrevFourDay = firstDayOfFourDay.subtract(const Duration(days: 4));
    return _getFourDayDates(lastDayOfPrevFourDay);
  }
}
