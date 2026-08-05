import 'package:challenges/src/find_busiest_hour.dart';
import 'package:test/test.dart';

void main() {
  test("it should return empty string for empty input", () {
    expect(busiestHour([]), "");
  });
  test("it should return same hour  for single input", () {
    expect(busiestHour(["09:10"]), "09");
    expect(busiestHour(["19:00"]), "19");
    expect(busiestHour(["23:10"]), "23");
  });
  test("it should return hour for same hour input", () {
    expect(busiestHour(["19:00", "19:20", "19:30", "19:40"]), "19");
  });
  test("it should return max no of hour  for input", () {
    expect(
      busiestHour(["09:10", "09:45", "10:05", "09:55", "11:20", "10:30"]),
      "09",
    );
  });
  test("return the hour that reached the highest count first.", () {
    expect(busiestHour(["10:30", "09:10", "10:05", "09:55", "11:20"]), "10");
  });
}
