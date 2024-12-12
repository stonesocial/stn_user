List<String> extractUsernamesInString(String text) {
  RegExp regExp = RegExp(r'@(\w+)');
  Iterable<Match> matches = regExp.allMatches(text);

  return matches.map((match) => match.group(1)!).toList();
}