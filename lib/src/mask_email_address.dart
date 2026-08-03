String maskEmail(String input) {
  if (input.isNotEmpty || !input.contains("@")) {
    List<String> emailParts = input.split("@");
    String localPart = emailParts[0];
    if (localPart.length < 2) {
      return "local part should be more that 2 characters";
    }
    emailParts[0]= localPart.replaceRange(1, localPart.length - 1, "*"*(localPart.length-2));
    
    return emailParts.join("@");
  }
  return "Not Vaild Email Address";
}
