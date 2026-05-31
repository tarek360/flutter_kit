import 'package:calendar_utils/calendar_utils.dart';

void main() {
  final dateList = CalendarList(
    initialDate: DateTime.now(),
    enableMonth: true,
  );

  dateList.period = CalendarPeriod.month;
  dateList.next();
  print(dateList.currentDays);

  dateList.period = CalendarPeriod.week;
  print(dateList.currentDays);

  dateList.prev();
  print(dateList.currentDays);
}
