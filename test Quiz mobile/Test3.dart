// Named Parameters (ใส่ปีกกา) และบังคับว่าต้องส่งค่า (required)
void attack({required String target, int damage = 10}) {
  print("โจมตี $target ด้วยดาเมจ $damage");
}

void main() {
  attack(target: "Slime"); // damage จะเป็น 10 ตามค่าเริ่มต้น
}