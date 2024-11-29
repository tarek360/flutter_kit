import 'package:calendar_utils/src/dates_linked_list.dart';
import 'package:test/test.dart';

void main() {
  final today = DateTime(2023, 3, 12);

  group('MonthsLinkedList tests', () {
    test('Move to current month', () {
      final monthList = MonthsLinkedList(today);
      final currentMonth = monthList.currentDays;

      expect(currentMonth.first, equals(DateTime(2023, 3, 1)));
      expect(currentMonth.last, equals(DateTime(2023, 3, 31)));
    });

    test('Move to next month', () {
      final monthList = MonthsLinkedList(today);
      final nextMonth = monthList.next();

      expect(nextMonth.first, equals(DateTime(2023, 4, 1)));
      expect(nextMonth.last, equals(DateTime(2023, 4, 30)));
    });

    test('Move to previous month', () {
      final monthList = MonthsLinkedList(today);
      final prevMonth = monthList.prev();

      expect(prevMonth.first, equals(DateTime(2023, 2, 1)));
      expect(prevMonth.last, equals(DateTime(2023, 2, 28)));
    });

    test('Move to specific month', () {
      final monthList = MonthsLinkedList(today);
      final specificMonth = monthList.moveTo(DateTime(2020, 2, 15));

      expect(specificMonth.first, equals(DateTime(2020, 2, 1)));
      expect(specificMonth.last, equals(DateTime(2020, 2, 29)));
    });

    test('Check current month dates', () {
      final monthList = MonthsLinkedList(today);
      final currentMonth = monthList.currentDays;

      expect(currentMonth.first, equals(DateTime(2023, 3, 1)));
      expect(currentMonth.last, equals(DateTime(2023, 3, 31)));
    });
  });
}
