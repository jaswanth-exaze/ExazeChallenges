// Notes: Input contains only (), {}, and [] brackets.

String balancedBrackets(List<String> input) {
  if (input.isEmpty) return "YES";
  
  if (input.length % 2 != 0) return "NO";
  List<String> resultStak = [];
  for (int i = 0; i < input.length; i++) {
    String char = input[i];
    if (char == "(" || char == "{" || char == "[") {
      resultStak.add(char);
    } else {
      if (resultStak.isEmpty) {
        return "NO";
      } else {
        if ((char == ")" && resultStak.last == "(") ||
            (char == "]" && resultStak.last == "[") ||
            (char == "}" && resultStak.last == "{")) {
          resultStak.removeLast();
        }
      }
    }
    
  }
  if (resultStak.isEmpty) {
    return "YES";
  } else {
    return "NO";
  }
}
