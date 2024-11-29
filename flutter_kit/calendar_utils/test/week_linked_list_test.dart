import 'package:calendar_utils/src/dates_linked_list.dart';
import 'package:test/test.dart';

void main() {
  group('WeeksLinkedList tests', () {
    final DateTime today = DateTime(2023, 3, 10); // Sunday
    final List<DateTime> currentWeekDates = [
      DateTime(2023, 3, 6), // Monday
      DateTime(2023, 3, 7),
      DateTime(2023, 3, 8),
      DateTime(2023, 3, 9),
      DateTime(2023, 3, 10),
      DateTime(2023, 3, 11),
      DateTime(2023, 3, 12), // Sunday
    ];
    final List<DateTime> nextWeekDates = [
      DateTime(2023, 3, 13), // Monday
      DateTime(2023, 3, 14),
      DateTime(2023, 3, 15),
      DateTime(2023, 3, 16),
      DateTime(2023, 3, 17),
      DateTime(2023, 3, 18),
      DateTime(2023, 3, 19), // Sunday
    ];
    final List<DateTime> prevWeekDates = [
      DateTime(2023, 2, 27), // Monday
      DateTime(2023, 2, 28),
      DateTime(2023, 3, 1),
      DateTime(2023, 3, 2),
      DateTime(2023, 3, 3),
      DateTime(2023, 3, 4),
      DateTime(2023, 3, 5), // Sunday
    ];

    test('Initialization', () {
      final linkedList = WeeksLinkedList(today);
      expect(linkedList.currentDays, currentWeekDates);
    });

    test('Next week', () {
      // Arrange
      final linkedList = WeeksLinkedList(today);
      final currentWeek = linkedList.currentDays;

      // Act
      final nextWeek = linkedList.next();

      // Assert
      expect(nextWeek, nextWeekDates);
      expect(linkedList.currentDays, nextWeek);
      expect(linkedList.currentDays, isNot(currentWeek));
    });

    test('Previous week', () {
      // Arrange
      final linkedList = WeeksLinkedList(today);
      final currentWeek = linkedList.currentDays;

      // Act
      final prevWeek = linkedList.prev();

      // Assert
      expect(prevWeek, prevWeekDates);
      expect(linkedList.currentDays, prevWeek);
      expect(linkedList.currentDays, isNot(currentWeek));
    });

    test('Moving forward and backward multiple times', () {
      final linkedList = WeeksLinkedList(today);
      final currentWeek = linkedList.currentDays;
      final nextWeek = linkedList.next();
      linkedList.prev();
      linkedList.prev();
      expect(currentWeek, currentWeekDates);
      expect(nextWeek, nextWeekDates);
      expect(linkedList.currentDays, prevWeekDates);
    });

    test('Move to the next week', () {
      // Arrange
      final linkedList = WeeksLinkedList(today);

      // Act
      linkedList.moveTo(DateTime(2023, 3, 16));

      // Assert
      expect(linkedList.currentDays, nextWeekDates);
    });

    test('Move to previous week', () {
      // Arrange
      final linkedList = WeeksLinkedList(today);

      // Act
      linkedList.moveTo(DateTime(2023, 3, 4));

      // Assert
      expect(linkedList.currentDays, prevWeekDates);
    });

    test('Move to the current week, no effect', () {
      // Arrange
      final linkedList = WeeksLinkedList(today);

      // Act
      linkedList.moveTo(DateTime(2023, 3, 9));

      // Assert
      expect(linkedList.currentDays, currentWeekDates);
    });

    test('Move to the future', () {
      // Arrange
      final linkedList = WeeksLinkedList(DateTime(2023, 1, 1));

      // Act
      linkedList.moveTo(DateTime(2023, 3, 8));

      // Assert
      expect(linkedList.currentDays, [
        DateTime(2023, 3, 6), // Monday
        DateTime(2023, 3, 7),
        DateTime(2023, 3, 8),
        DateTime(2023, 3, 9),
        DateTime(2023, 3, 10),
        DateTime(2023, 3, 11),
        DateTime(2023, 3, 12), // Sunday
      ]);
    });

    test('Move to the past', () {
      // Arrange
      final linkedList = WeeksLinkedList(DateTime(2023, 1, 1));

      // Act
      linkedList.moveTo(DateTime(2022, 9, 30));

      // Assert
      expect(linkedList.currentDays, [
        DateTime(2022, 9, 26), // Monday
        DateTime(2022, 9, 27),
        DateTime(2022, 9, 28),
        DateTime(2022, 9, 29),
        DateTime(2022, 9, 30),
        DateTime(2022, 10, 1),
        DateTime(2022, 10, 2), // Sunday
      ]);
    });
  });
}
