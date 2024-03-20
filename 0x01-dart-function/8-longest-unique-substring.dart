
String longestUniqueSubstring(String str) {
  if (str.isEmpty) return "";

  String longest = "";
  String current = "";

  for (int i = 0; i < str.length; i++) {
    String char = str[i];
    int index = current.indexOf(char);
    if (index != -1) {
      
      current = current.substring(index + 1);
    }
    
    current += char;
 
    if (current.length > longest.length) {
      longest = current;
    }
  }

  return longest;
}
