import 'dart:io';

void main() {
  int price, money, change;
  int pizza = 0;

  print('Welcome to the Wazir Pizza Point');
  print('1. [Deal 1: 1 Small Pizza + 1 345ml Cold Drink: 350/- ');
  print('2. [Deal 2: 1 Medium Pizza + 1 500ml Cold Drink: 550/- ');
  print('3. [Deal 3: 1 Large Pizza + 1 1 liter Cold Drink: 1050/- ');
  print('4. [Deal 4: Deal 1 + Deal 2: 850/-');
  print('5. [Deal 5: Deal 1 + Deal 2 + Deal 3: 1800/- ');

  int choice = int.parse('${stdin.readLineSync()}');
  switch (choice) {
    case 1:
      price = pizza + 350;
      print('That will be your total amount of: $price');
      break;
    case 2:
      price = pizza + 550;
      print('That will be your total amount of: $price');
      break;
    case 3:
      price = pizza + 1050;
      print('That will be your total amount of: $price');
      break;
    case 4:
      price = pizza + 850;
      print('That will be your total amount of: $price');
      break;
    case 5:
      price = pizza + 1800;
      print('That will be your total amount of: $price');
      break;
    default:
      print('You choose the wrong item');
      return;
  }
  print('Enter the Cash Amount');
  money = int.parse('${stdin.readLineSync()}');
  if (money > price) {
    change = money - price;
    print('Take your change: $change');
    print("Thank You! Enjoy your meal.");
  } else if (money == price) {
    print('Thank you! you pay the exact amount. Enjoy your food.');
  } else {
    print('Insufficient! Please enter the Correct Amount');
  }
}
