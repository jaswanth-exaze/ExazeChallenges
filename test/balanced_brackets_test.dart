import 'package:challenges/src/balanced_brackets.dart';
import 'package:test/scaffolding.dart';
import 'package:test/test.dart';

void main() {
  test("it should return YES for empty input lists", () {
    expect(balancedBrackets([]), "YES");
  });
  test("it should return NO for empty odd length of input", () {
    expect(balancedBrackets(["[","]","]"]), "NO");
  });
  test("it should return YES for vaild balanced brackets input list", () {
    expect(balancedBrackets(["[","]"]), "YES");
    expect(balancedBrackets(["[","(",")","]"]), "YES");
  });
  test("it should return NO for Invaild balanced brackets input list", () {
    expect(balancedBrackets(["[","]","{"]), "NO");
    expect(balancedBrackets(["[","(",")",")","]"]), "NO");
  });
  
}
