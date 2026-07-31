import 'package:challenges/src/ExtractDomainFromEmail.dart';
import 'package:test/test.dart';

void main() {
  test("it should return empty string for empty input", () {
    expect(extractDomainEmail(""), "");
  });
  test(
    "it should return Invaild input email for input with not contains @",
    () {
      expect(extractDomainEmail("jaswanth.uppu"), "Invaild input email");
    },
  );
  test(
    "it should return domain name for proper email address String input",
    () {
      expect(extractDomainEmail("associate@exazeit.com"), "exazeit.com");
    },
  );
}
