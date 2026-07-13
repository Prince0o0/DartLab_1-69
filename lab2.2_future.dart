Future<String> getUserName() {
  return Future.delayed(Duration(seconds: 2), () => 'Mark');
}

void main() {
  print("Start");
  getUserName().then((value) => print(value));
  print("End");
}
