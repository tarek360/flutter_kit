import 'package:calendar_utils/calendar_utils.dart';
import 'package:test/test.dart';

void main() {
  group('formatTimeRange', () {
    test('should format time range with 12-hour format', () {
      final start = DateTime(2022, 3, 17, 10, 15);
      final end = DateTime(2022, 3, 17, 11, 15);
      final result = formatTimeRange(start, end, format24Hours: false);
      expect(result, '10:15am - 11:15am');
    });
    test('should format time range with 12-hour format afternoon', () {
      final start = DateTime(2022, 3, 17, 13, 15);
      final end = DateTime(2022, 3, 17, 14, 30);
      final result = formatTimeRange(start, end, format24Hours: false);
      expect(result, '1:15pm - 2:30pm');
    });

    test('should format time range with 24-hour format', () {
      final start = DateTime(2022, 3, 17, 13, 15);
      final end = DateTime(2022, 3, 17, 14, 30);
      final result = formatTimeRange(start, end, format24Hours: true);
      expect(result, '13:15 - 14:30');
    });

    test('should format time range at noon and midnight with 12-hour format', () {
      final start = DateTime(2022, 3, 17, 11, 0);
      final end = DateTime(2022, 3, 17, 12, 0);
      final result = formatTimeRange(start, end, format24Hours: false);
      expect(result, '11:00am - 12:00pm');
    });

    test('should format time range at noon and midnight with 24-hour format', () {
      final start = DateTime(2022, 3, 17, 11, 0);
      final end = DateTime(2022, 3, 17, 12, 0);
      final result = formatTimeRange(start, end, format24Hours: true);
      expect(result, '11:00 - 12:00');
    });
  });
}
