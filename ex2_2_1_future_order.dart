Future<void> loadData() {
  return Future.delayed(Duration(seconds: 3), () {
    print('2. โหลดเสร็จ');
  });
}

void main() {
  print('1. เริ่ม');

  loadData().then((_) {
  });

  print('3. จบ');
}