bool isPalindrome(String s) {
  if (s.length < 3) return false; 

 
  s = s.toLowerCase();

  int left = 0;
  int right = s.length - 1;

  while (left < right) {
    
    while (left < right && !s[left].toLowerCase().contains(RegExp(r'[a-z0-9]'))) {
      left++;
    }
    while (left < right && !s[right].toLowerCase().contains(RegExp(r'[a-z0-9]'))) {
      right--;
    }

    
    if (s[left] != s[right]) {
      return false; 
    }
    
    
    left++;
    right--;
  }
  
  
  return true;
}
