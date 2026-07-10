abstract class PaymentMethod {
  void pay(double amount);
}

class CreditCard implements PaymentMethod {
  String cardNumber;
  String cardHolder;

  CreditCard(this.cardNumber, this.cardHolder);

  @override
  void pay(double amount) {
    print('Paid $amount using Credit Card ($cardNumber, $cardHolder)');
  }
}

class PromptPay implements PaymentMethod {
  String phoneNumber;

  PromptPay(this.phoneNumber);

  @override
  void pay(double amount) {
    print('Paid $amount using PromptPay ($phoneNumber)');
  }
}

class CashOnDelivery implements PaymentMethod {
  String address;

  CashOnDelivery(this.address);

  @override
  void pay(double amount) {
    print('Paid $amount on Delivery to $address');
  }
}

void main() {
  List<PaymentMethod> payments = [
    CreditCard('1234567812345678', 'Kim Kanancha'),
    PromptPay('081-234-5678'),
    CashOnDelivery('123/45 ถนนสุขุมวิท กรุงเทพฯ'),
  ];

  for (var payment in payments) {
    payment.pay(1500.0);
  }
}


//เลือกใช้ implements เพราะ extends เหมาะสำหรับเป็นชนิดเดียวกันและใช้โค้ดร่วมกัน ส่วน implements มีเมธอดนี้แน่นอน แต่ทำงานต่างกันได้อย่างอิสระ