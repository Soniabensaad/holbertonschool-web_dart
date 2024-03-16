void outer(String name, String id) {
  String inner() {
    var split = name.split(" ");
    var result = split[1].substring(0, 1) + "." + split[0];
    return "Hello Agent ${result} your id is $id";
  }

  print(inner());
}
