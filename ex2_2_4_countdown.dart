Stream<String> countdown(int from) async* {
  for (int i = from; i > 0; i--) {
    await Future.delayed(Duration(seconds: 1));
    yield i.toString();
  }
  await Future.delayed(Duration(seconds: 1));
  yield 'Time\'s up!';
}

void main() async {
  print('Countdown 5...');

  await for (String value in countdown(5)) {
    print(value);
  }

  print('Countdown finished');
}