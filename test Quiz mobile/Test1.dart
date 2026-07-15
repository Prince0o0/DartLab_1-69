void main() {
  // การระบุชนิดข้อมูล (int, double, String, bool)
  int hp = 100;
  double speed = 1.5;
  bool isAlive = true;

  // final (กำหนดค่าแล้วเปลี่ยนไม่ได้) และ const (ค่าคงที่ตั้งแต่ก่อนรัน)
  final String heroName = "Knight"; 
  
  // String Interpolation (การแทรกตัวแปรในข้อความ)
  print("ฮีโร่ชื่อ $heroName มีพลังชีวิต ${hp + 50}"); 

  // Null Safety (ตัวแปรที่เป็น null ได้ ต้องมี ?)
  String? guildName;
  // ?? หมายถึง ถ้าข้างหน้าเป็น null ให้ใช้ค่าข้างหลังแทน
  print("กิลด์: ${guildName ?? 'ไม่มีกิลด์'}"); 
}