class Pizza {
  late int price;
  bool veg;
  int extraCheesePrice = 100;
  int extraToppingPrice = 150;
  int bagPackPrice = 20;

  Pizza(this.veg) {
    if (this.veg == true) {
      this.price = 300;
    } else {
      this.price = 400;
    }
  }
  void vegPizza() {
    this.price = 300;
  }

  void nonVegPizza() {
    this.price = 400;
  }

  void addExtraCheese() {
    print('Extra cheese added.');
    this.price += extraCheesePrice;
  }

  void addExtraTopping() {
    print('Extra topping added.');
    this.price += extraToppingPrice;
  }

  void takeAway() {
    print('Ready for take away.');
    this.price += bagPackPrice;
  }

  void getPizzaBill() {
    print(this.price);
  }
}
