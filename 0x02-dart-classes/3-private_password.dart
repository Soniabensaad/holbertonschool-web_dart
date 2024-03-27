class Password {
  String _password;

  Password({required String password}) : _password = password;

  String get password => _password;

  bool isValid() {
    return (_password.length >= 8 && _password.length <= 16) &&
        _password.contains(new RegExp(r"[A-Z]")) &&
        _password.contains(new RegExp(r"[a-z]")) &&
        _password.contains(new RegExp(r"[0-9]"));
  }

  @override
  String toString() => "Your Password is: $_password";
}
