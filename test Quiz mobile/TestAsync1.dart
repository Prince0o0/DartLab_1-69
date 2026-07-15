// ต้องมี async และ await เพื่อรอให้ Future ทำงานเสร็จ
Future<void> fetchServerData() async {
  try {
    print("กำลังเชื่อมต่อเซิร์ฟเวอร์...");
    // จำลองการดีเลย์ 2 วินาที
    await Future.delayed(Duration(seconds: 2));
    print("เชื่อมต่อสำเร็จ!");
  } catch (e) {
    print("เกิดข้อผิดพลาด: $e"); // จัดการ Error
  } finally {
    print("จบการทำงาน"); // ทำเสมอไม่ว่าจะพังหรือไม่
  }
}