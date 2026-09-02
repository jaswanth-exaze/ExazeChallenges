String maskEmail(String input) {
  input = input.trim();
  if (input.isNotEmpty) {
    if (!input.contains("@")) {
      return "Not Vaild Email Address";
    }
    List<String> emailParts = input.split("@");
    String localPart = emailParts[0];
    if (localPart.length < 2) {
      return "local part should be more that 2 characters";
    }
    emailParts[0] = localPart.replaceRange(
      1,
      localPart.length - 1,
      "*" * (localPart.length - 2),
    );

    return emailParts.join("@");
  }
  return "Not Vaild Email Address";
}
