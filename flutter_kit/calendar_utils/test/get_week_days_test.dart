import 'package:calendar_utils/calendar_utils.dart';
import 'package:test/test.dart';

void main() {
  group('getWeekdaysStartingOnSunday test', () {
    void expectWeekStartsWithSunday(List<DateTime> week) {
      expect(week.length, 7);
      expect(week[0].day, 1);
      expect(week[0].month, 10);

      expect(week[0].weekday, DateTime.sunday);
      expect(week[1].weekday, DateTime.monday);
      expect(week[2].weekday, DateTime.tuesday);
      expect(week[3].weekday, DateTime.wednesday);
      expect(week[4].weekday, DateTime.thursday);
      expect(week[5].weekday, DateTime.friday);
      expect(week[6].weekday, DateTime.saturday);
    }

    test('expectWeekStartsWithSunday where today is Sunday', () async {
      final result = getWeekdaysStartingOnSunday(DateTime(2023, 10, 1));

      expectWeekStartsWithSunday(result.$1);
      expect(result.$2, 0);
    });

    test('expectWeekStartsWithSunday where today is Monday', () async {
      final result = getWeekdaysStartingOnSunday(DateTime(2023, 10, 2));

      expectWeekStartsWithSunday(result.$1);
      expect(result.$2, 1);
    });

    test('expectWeekStartsWithSunday where today is Tuesday', () async {
      final result = getWeekdaysStartingOnSunday(DateTime(2023, 10, 3));

      expectWeekStartsWithSunday(result.$1);
      expect(result.$2, 2);
    });

    test('expectWeekStartsWithSunday where today is Wednesday', () async {
      final result = getWeekdaysStartingOnSunday(DateTime(2023, 10, 4));

      expectWeekStartsWithSunday(result.$1);
      expect(result.$2, 3);
    });

    test('expectWeekStartsWithSunday where today is Thursday', () async {
      final result = getWeekdaysStartingOnSunday(DateTime(2023, 10, 5));

      expectWeekStartsWithSunday(result.$1);
      expect(result.$2, 4);
    });

    test('expectWeekStartsWithSunday where today is Friday', () async {
      final result = getWeekdaysStartingOnSunday(DateTime(2023, 10, 6));

      expectWeekStartsWithSunday(result.$1);
      expect(result.$2, 5);
    });

    test('expectWeekStartsWithSunday where today is Saturday', () async {
      final result = getWeekdaysStartingOnSunday(DateTime(2023, 10, 7));

      expectWeekStartsWithSunday(result.$1);
      expect(result.$2, 6);
    });
  });

  group('getWeekdaysStartingOnMonday test', () {
    void expectWeekStartsWithMonday(List<DateTime> week) {
      expect(week[0].day, 1);
      expect(week[0].month, 5);

      expect(week[0].weekday, DateTime.monday);
      expect(week[1].weekday, DateTime.tuesday);
      expect(week[2].weekday, DateTime.wednesday);
      expect(week[3].weekday, DateTime.thursday);
      expect(week[4].weekday, DateTime.friday);
      expect(week[5].weekday, DateTime.saturday);
      expect(week[6].weekday, DateTime.sunday);
    }

    test('expectWeekStartsWithMonday where today is Monday', () async {
      final result = getWeekdaysStartingOnMonday(DateTime(2023, 5, 1));

      expectWeekStartsWithMonday(result.$1);
      expect(result.$2, 0);
    });

    test('expectWeekStartsWithMonday where today is Tuesday', () async {
      final result = getWeekdaysStartingOnMonday(DateTime(2023, 5, 2));

      expectWeekStartsWithMonday(result.$1);
      expect(result.$2, 1);
    });

    test('expectWeekStartsWithMonday where today is Wednesday', () async {
      final result = getWeekdaysStartingOnMonday(DateTime(2023, 5, 3));

      expectWeekStartsWithMonday(result.$1);
      expect(result.$2, 2);
    });

    test('expectWeekStartsWithMonday where today is Thursday', () async {
      final result = getWeekdaysStartingOnMonday(DateTime(2023, 5, 4));

      expectWeekStartsWithMonday(result.$1);
      expect(result.$2, 3);
    });

    test('expectWeekStartsWithMonday where today is Friday', () async {
      final result = getWeekdaysStartingOnMonday(DateTime(2023, 5, 5));

      expectWeekStartsWithMonday(result.$1);
      expect(result.$2, 4);
    });

    test('expectWeekStartsWithMonday where today is Saturday', () async {
      final result = getWeekdaysStartingOnMonday(DateTime(2023, 5, 6));

      expectWeekStartsWithMonday(result.$1);
      expect(result.$2, 5);
    });

    test('expectWeekStartsWithMonday where today is Sunday', () async {
      final result = getWeekdaysStartingOnMonday(DateTime(2023, 5, 7));

      expectWeekStartsWithMonday(result.$1);
      expect(result.$2, 6);
    });
  });
}
