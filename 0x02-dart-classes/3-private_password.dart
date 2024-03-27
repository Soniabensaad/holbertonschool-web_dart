class Password {
  String _password = '';

  bool isValid() {
    if (this._password.length >= 8 && this._password.length <= 16) {
      if (this._password.contains(RegExp(r'[A-Z]')) &&
          this._password.contains(RegExp(r'[a-z]'))) {
        if (this._password.contains(RegExp(r'[0-9]'))) {
          return true;
        }
      }
    }

    return false;
  }

  @override
  String toString() {
    return 'Your Password is: ${this._password}';
  }
}
