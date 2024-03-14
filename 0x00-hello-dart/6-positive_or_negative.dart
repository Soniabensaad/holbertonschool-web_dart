void main(List<String> args) {
  int number = int.parse(args[0]);

  bool positive = number > 0;
  bool negative = number < 0;
  bool zero = number == 0;

  if (positive) {
    print('$number is positive');
  } else if (negative) {
    print('$number is negative');
  } else {
    print('$number is zero');
  }
}
