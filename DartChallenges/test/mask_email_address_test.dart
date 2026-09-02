import '../lib/src/mask_email_address.dart';

import 'package:test/test.dart';

void main() {
  test("it should return Not Vaild Email Address string if input is empty", () {
    expect(maskEmail(""), "Not Vaild Email Address");
  });
  test("it should return Not Vaild Email Address string if input is not vaild email", () {
    expect(maskEmail(""), "Not Vaild Email Address");
  });
  test("it should return local part should be more that 2 characters string if input is not having 2 character in localpart of email", () {
    expect(maskEmail("j@gmail.com"), "local part should be more that 2 characters");
  });
  test("it should return same email for 2 character ", () {
    expect(maskEmail("jw@gmail.com"), "jw@gmail.com");
  });
  test("it should return masked email for >2 character ", () {
    expect(maskEmail("jasw@gmail.com"), "j**w@gmail.com");
  });

}
