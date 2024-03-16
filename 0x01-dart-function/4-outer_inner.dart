String inner() {
  return "Hello";
}

void outer(String name, String id) {
  print("${inner()} Agent ${name.split(' ')[0].substring(0, 1)}. ${name.split(' ')[1]} your id is $id");
}
