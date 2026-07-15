// 1. Abstract Class (คลาสนามธรรม เอาไว้เป็นแม่แบบ สร้างออบเจกต์ตรงๆ ไม่ได้)
abstract class Character {
  void useSkill(); // เมธอดนามธรรม (ไม่มีเนื้อหา)
}

// 2. Inheritance (การสืบทอด ใช้ extends)
class Mage extends Character {
  // 3. Encapsulation (การซ่อนข้อมูล ใส่ _ นำหน้าตัวแปร)
  int _mana;

  // 4. Constructor แบบย่อที่ใช้ this
  Mage(this._mana);

  // 5. Getter / Setter (เพื่ออ่านและแก้ไขค่าที่ถูกซ่อนไว้)
  int get mana => _mana;
  set mana(int value) {
    if (value >= 0) {
      _mana = value;
    }
  }

  // 6. Polymorphism (การเขียนทับเมธอดของคลาสแม่)
  @override
  void useSkill() {
    print("ร่ายเวทย์! มานาคงเหลือ: ${_mana - 10}");
  }
}

// 7. สมาชิกแบบสถิต (static) และ Enum
enum Element { fire, water, wind }

class GameSystem {
  static int playerCount = 0; // เรียกใช้ผ่าน GameSystem.playerCount ได้เลย
}