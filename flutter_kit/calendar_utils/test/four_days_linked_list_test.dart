import 'package:calendar_utils/src/dates_linked_list.dart';
import 'package:test/test.dart';

void main() {
  final today = DateTime(2023, 3, 12); // Sunday

  group('FourDaysLinkedList', () {
    test('should have the correct first and last dates in the initial node', () {
      final linkedList = FourDaysLinkedList(today);

      expect(linkedList.currentDays.first, equals(DateTime(2023, 3, 12))); // Sunday
      expect(linkedList.currentDays.last, equals(DateTime(2023, 3, 15))); // Wednesday
    });

    test('should have the correct first and last dates in the next node', () {
      final linkedList = FourDaysLinkedList(today);

      linkedList.next();

      expect(linkedList.currentDays.first, equals(DateTime(2023, 3, 16))); // Thursday
      expect(linkedList.currentDays.last, equals(DateTime(2023, 3, 19))); // Sunday
    });

    test('should have the correct first and last dates in the previous node', () {
      final linkedList = FourDaysLinkedList(today);

      linkedList.prev();

      expect(linkedList.currentDays.first, equals(DateTime(2023, 3, 8))); // Wednesday
      expect(linkedList.currentDays.last, equals(DateTime(2023, 3, 11))); // Saturday
    });

    test('should have the correct first and last dates when moving to a specific date', () {
      final linkedList = FourDaysLinkedList(today);

      linkedList.moveTo(DateTime(2023, 4, 14));

      expect(linkedList.currentDays.first, equals(DateTime(2023, 4, 13))); // Thursday
      expect(linkedList.currentDays.last, equals(DateTime(2023, 4, 16))); // Sunday
    });
  });
}
