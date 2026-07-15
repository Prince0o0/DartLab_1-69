class Menuitem{
  const Menuitem(this.name, this.basePrice);
  final String name;
  final int basePrice;
  final int price;

}
  double get price => price;
  show(String name, int price) {
    print('Item: $name, Price: $price Baht');
  }
class Drink extends Menuitem{
  Drink(String name, int basePrice): super(name, basePrice);

  toping(int topings) {
    print(basePrice + (10 * topings));
  }

}

class Food extends Menuitem{
  Food(String name, int basePrice): super(name, basePrice);

  toping(int topings) {
    print(basePrice + (15 * topings));
    
  }
}