// ใช้ async* (มีดาว) และ yield ในการทยอยส่งค่าออกไป
Stream<int> countdown() async* {
  for (int i = 3; i > 0; i--) {
    await Future.delayed(Duration(seconds: 1));
    yield i; 
  }
}

void main() async {
  // การรับค่าจาก Stream ต้องใช้ await for
  await for (int number in countdown()) {
    print("นับถอยหลัง: $number");
  }
}