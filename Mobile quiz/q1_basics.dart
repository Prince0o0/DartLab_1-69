const vatRate = 0.07;

List<String> ShopItems() {
  return ['Coffee', 'Tea', 'Sandwich', 'Taco', 'Salad'];
}
Map<String, int> ShopPrices() {
  return {
    'Coffee': 55,
    'Tea': 50,
    'Sandwich': 25,
    'Taco': 40,
    'Salad': 70,
  };
}

void main(){
  final shopName = 'Dart Cafe';
  print('shopName: $shopName');
  print('vatRate: $vatRate');
  print('-------------');
  print('ShopItems: ${ShopItems().length}');
  print('ShopPrices: ${ShopPrices().length}');
  print('SomeMenu : ${ShopItems()[0]}');
  print('--------------');

  for (var item in ShopItems()) {
    if (ShopPrices()[item]! >= 50) {
      print('Item: $item, Price: ${ShopPrices()[item]} Baht');
      print('----------------');
    }
    // print('Item: $item, Price: ${ShopPrices()[item]} Baht');
  }

void calcTotal(int price, int qty, double discount) {
  discount = 0 ;
  final total = price * qty;
  final discountAmount = discount;
  final grandTotal = total - discountAmount;

  print('Total: $total Baht');
  print('Discount: $discountAmount Baht');
  print('Grand Total: $grandTotal Baht');

}
calcTotal(55, 2,0.0);
}