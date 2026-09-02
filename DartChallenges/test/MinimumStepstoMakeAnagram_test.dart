import '../lib/src/MinimumStepstoMakeAnagram.dart';
import 'package:test/test.dart';

void main() {
  test("it should retun 0 for empty inputs", () {
    expect(minimumStepstoMakeAnagram("", ""), 0);
  });
  test("it should retun -1 for different length inputs", () {
    expect(minimumStepstoMakeAnagram("abtcdz", "aczbdpt"), -1);
  });
  test(
    "it should retun 0 for same length inputs and same characters in both inputs",
    () {
      expect(minimumStepstoMakeAnagram("abtcdz", "aczbdt"), 0);
    },
  );
  test("ist should return number of steps to make anagram", () {
    expect(minimumStepstoMakeAnagram("abcdm", "abden"), 2);
    expect(minimumStepstoMakeAnagram("zxy", "abc"), 3);
    expect(
      minimumStepstoMakeAnagram(
        "qwertyuiopasdfghjklzxcvbnm",
        "abcdefghijklmnopqrstuvwxyz",
      ),
      0,
    );
  });
}
