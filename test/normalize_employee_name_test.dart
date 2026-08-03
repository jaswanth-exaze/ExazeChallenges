import 'package:challenges/src/normalize_employee_name.dart';
import 'package:test/test.dart';

void main() {
  test("it should return empty and whitespaces string for empty input", () {
    expect(normalizeEmployeeName(" "), "");
    expect(normalizeEmployeeName("    "), "");
    expect(normalizeEmployeeName("          "), "");
  });
  test("it should return capitalize every first word for input", () {
    expect(normalizeEmployeeName("jaswanth kumar"), "Jaswanth Kumar");
    
  });
  test("it should handle for whitespace ", () {
    expect(normalizeEmployeeName("jaswanth    kumar"), "Jaswanth Kumar");
  });
  test("it should handle for case  ", () {
   expect(normalizeEmployeeName("jaswAnth kuMar"), "Jaswanth Kumar");
  });
}
