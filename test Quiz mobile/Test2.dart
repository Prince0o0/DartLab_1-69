void main() {
  List<String> items = ["Sword", "Shield"];
  print("มีไอเทมทั้งหมด ${items.length} ชิ้น");

  Map<String, int> stats = {"ATK": 50, "DEF": 30};
  // การวนลูป Map
  for (var entry in stats.entries) {
    print("${entry.key} : ${entry.value}");
  }
}