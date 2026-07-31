import 'package:challenges/src/mirror_number.dart';
import 'package:test/test.dart';

void main() {
  test("it should return true for all single digit numbers", () {
    expect(mirrorNumber(0), true);
    expect(mirrorNumber(1), true);
    expect(mirrorNumber(5), true);
    expect(mirrorNumber(9), true);
  });
  test("it should return true if it reads the same forward and backward", () {
    expect(mirrorNumber(11), true);
    expect(mirrorNumber(111), true);
    expect(mirrorNumber(121), true);
    expect(mirrorNumber(5512312132155), true);
  });
  test("it should return flase if it reads the different forward and backward", () {
    expect(mirrorNumber(12), false);
    expect(mirrorNumber(112), false);
    expect(mirrorNumber(21), false);
    expect(mirrorNumber(55123121132155), false);
  });
}
