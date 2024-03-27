class Password {
  String _value;

  Password(this._value) {
    if (_value.length < 8 || _value.length > 16) {
      throw ArgumentError('Password must be between 8 and 16 characters long.');
    }
  }

  bool isValid() {
    bool hasUppercase = false;
    bool hasLowercase = false;
    bool hasNumber = false;

    for (int i = 0; i < _value.length; i++) {
      if (_value.codeUnitAt(i) >= 65 && _value.codeUnitAt(i) <= 90) {
        hasUppercase = true;
      } else if (_value.codeUnitAt(i) >= 97 && _value.codeUnitAt(i) <= 122) {
        hasLowercase = true;
      } else if (_value.codeUnitAt(i) >= 48 && _value.codeUnitAt(i) <= 57) {
        hasNumber = true;
      }
    }

    return hasUppercase && hasLowercase && hasNumber;
  }

  @override
  String toString() {
    return 'Your Password is: $_value';
  }
}
