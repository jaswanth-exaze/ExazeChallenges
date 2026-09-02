import '../lib/src/happy_number.dart';
import 'package:test/test.dart';

void main() {
  test("it should return no for 0 input", () {
    expect(happyNumber(0), false);
  });
  test("it should return Yes for input 1", () {
    expect(happyNumber(1), true);
  });
  test("it should return Yes for input 19", () {
    expect(happyNumber(19), true);
  });
  test("it should return NO for input 18", () {
    expect(happyNumber(18), false);
  });
}
