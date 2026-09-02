import '../lib/src/longest_substring_without_repeating_characters.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';



void main() {
  test("it should return 0 for empty input", () {
    expect(longestSubstringWithoutRepeating(""), 0);
  });
  test("it should return length of string for all uniqic input characters", () {
    expect(longestSubstringWithoutRepeating("abcd"), 4);
    expect(longestSubstringWithoutRepeating("abcdefgh"), 8);
  });
  test("it should return length of longest substring for input String", () {
    expect(longestSubstringWithoutRepeating("abcaadfg"), 4);
    expect(longestSubstringWithoutRepeating("abcabcbb"), 3);
    expect(longestSubstringWithoutRepeating("aabb"), 2);
    expect(longestSubstringWithoutRepeating("abab"), 2);
  });
  test("it should handle case", () {
    expect(longestSubstringWithoutRepeating("Aa"), 2);
    expect(longestSubstringWithoutRepeating("AaBb"), 4);
    expect(longestSubstringWithoutRepeating("AABB"), 2);
  });
  
}
