import 'dart:io';

void main() {
  int burger = 250;
  int change, money, price;

  print('Welcome to the WAZIRs BURGER POINT.');
  print('Regular Burger: 250.');
  print('1. Add Cheese: 50');
  print('2. Add egg: 40');
  print('3. Add Sandwich and Cheese: 150');
  print('4. Add Cheese, Egg and Sandwich: 190');

  int choice = int.parse('${stdin.readLineSync()}');
  switch (choice) {
    case 1:
      price = burger + 50;
      print('That will be your total amount of: $price');
      break;
    case 2:
      price = burger + 40;
      print('That will be your total amount of: $price');
      break;
    case 3:
      price = burger + 150;
      print('That will be your total amount of: $price');
      break;
    case 4:
      price = burger + 190;
      print('That will be your total amount of: $price');
      break;
    default:
      print('You have chose wrong');
      return;
  }
  print('Enter Cash Amount: ');
  money = int.parse('${stdin.readLineSync()}');
  change = money - price;
  if (money > price) {
    print('Take your change: $change');
    print('Thank You! Enjoy Your Meal');
  } else if (money == price) {
    print('Thank You! You pay the exact amount');
  } else {
    print('Insufficient Cash! Please Enter the Correct Amount');
  }
}
