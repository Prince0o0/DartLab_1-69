abstract class PaymentMethod {
  double amount;

  PaymentMethod(this.amount);

  void pay(double amount);
}

class CreditCard extends PaymentMethod {
  String cardNumber;

  CreditCard(double amount, this.cardNumber) : super(amount);

  @override
  void pay(double amount) {
    print('Pay $amount Baht with credit card $cardNumber successfully');
  }
}

class PromptPay extends PaymentMethod {
  String phoneNumber;

  PromptPay(double amount, this.phoneNumber) : super(amount);

  @override
  void pay(double amount) {
    print('Pay $amount Baht with PromptPay number $phoneNumber successfully');
  }
}

class CashOnDelivery extends PaymentMethod {
  String address;

  CashOnDelivery(double amount, this.address) : super(amount);

  @override
  void pay(double amount) {
    print('Pay $amount Baht cash on delivery at address: $address');
  }
}

void main() {
  List<PaymentMethod> payments = [
    CreditCard(1500, '1234-5678-9012-3456'),
    PromptPay(800, '081-234-5678'),
    CashOnDelivery(500, '227/187 Namphet 4'),
  ];

  for (PaymentMethod p in payments) {
    p.pay(p.amount);
  }
}