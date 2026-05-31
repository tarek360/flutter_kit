import 'dates_linked_list.dart';

enum CalendarPeriod {
  fourDays,
  week,
  month,
}

class CalendarList {
  CalendarList({
    required DateTime initialDate,
    CalendarPeriod period = CalendarPeriod.week,
    this.enableFourDays = false,
    this.enableWeek = true,
    this.enableMonth = false,
  })  : _period = period,
        _fourDaysList = enableFourDays ? FourDaysLinkedList(initialDate) : null,
        _weekList = enableWeek ? WeeksLinkedList(initialDate) : null,
        _monthList = enableMonth ? MonthsLinkedList(initialDate) : null;

  final bool enableFourDays;
  final bool enableWeek;
  final bool enableMonth;

  final DatesLinkedList? _fourDaysList;
  final DatesLinkedList? _weekList;
  final DatesLinkedList? _monthList;

  CalendarPeriod _period;

  set period(CalendarPeriod p) {
    switch (p) {
      case CalendarPeriod.fourDays:
        if (!enableFourDays) {
          throw Exception('fourDays is not enabled!');
        }
        break;
      case CalendarPeriod.week:
        if (!enableWeek) {
          throw Exception('week is not enabled!');
        }
        break;
      case CalendarPeriod.month:
        if (!enableMonth) {
          throw Exception('month is not enabled!');
        }
        break;
    }
    switch (_period) {
      case CalendarPeriod.fourDays:
        final firstDay = _fourDaysList!.currentDays.first;
        _weekList?.moveTo(firstDay);
        _monthList?.moveTo(firstDay);
        break;
      case CalendarPeriod.week:
        final firstDay = _weekList!.currentDays.first;
        _fourDaysList?.moveTo(firstDay);
        _monthList?.moveTo(firstDay);
        break;
      case CalendarPeriod.month:
        final firstDay = _monthList!.currentDays.first;
        _fourDaysList?.moveTo(firstDay);
        _weekList?.moveTo(firstDay);
        break;
    }

    _period = p;
  }

  List<DateTime> get currentDays {
    switch (_period) {
      case CalendarPeriod.fourDays:
        return _fourDaysList!.currentDays;
      case CalendarPeriod.week:
        return _weekList!.currentDays;
      case CalendarPeriod.month:
        return _monthList!.currentDays;
    }
  }

  List<DateTime> moveTo(DateTime date) {
    switch (_period) {
      case CalendarPeriod.fourDays:
        return _fourDaysList!.moveTo(date);
      case CalendarPeriod.week:
        return _weekList!.moveTo(date);
      case CalendarPeriod.month:
        return _monthList!.moveTo(date);
    }
  }

  List<DateTime> next() {
    switch (_period) {
      case CalendarPeriod.fourDays:
        return _fourDaysList!.next();
      case CalendarPeriod.week:
        return _weekList!.next();
      case CalendarPeriod.month:
        return _monthList!.next();
    }
  }

  List<DateTime> prev() {
    switch (_period) {
      case CalendarPeriod.fourDays:
        return _fourDaysList!.prev();
      case CalendarPeriod.week:
        return _weekList!.prev();
      case CalendarPeriod.month:
        return _monthList!.prev();
    }
  }

// static DatesLinkedList week(DateTime initialDate) {
//   return WeeksLinkedList(initialDate);
// }
//
// static DatesLinkedList month(DateTime initialDate) {
//   return MonthsLinkedList(initialDate);
// }
//
// static DatesLinkedList fourDays(DateTime initialDate) {
//   return FourDaysLinkedList(initialDate);
// }
}
