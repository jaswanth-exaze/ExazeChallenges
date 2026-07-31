// Extract Domain From Email
// easy
// Pending Review
// 5 pts
// Manual Review
// Python 3
// Attempts used: 1/3
// Your latest submission is awaiting review.

// Given an email address, extract and print only the domain name after the @ symbol.

// Notes: Input will be a valid email address containing exactly one @ symbol.

// Sample Input
// associate@exazeit.com

// Expected Output
// exazeit.com

String extractDomainEmail(String email) {
  if (email.isNotEmpty) {
    String seperater = "@";
    if (email.contains(seperater)) {
      String domainName = email.split(seperater)[1];
      return domainName;
    } else {
      return "Invaild input email";
    }
  }
  return "";
}
