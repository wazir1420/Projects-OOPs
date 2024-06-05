import 'dart:io';

import 'Pizza.dart';

void main() {
  Pizza wazir = Pizza(true);

  print('Welcome to the Pizza bill Generator System.');
  print('1. Press 1 to get Veg pizza. ');
  print('2. Press 2 to get Non-Veg pizza ');

  int jan = int.parse('${stdin.readLineSync()}');
  switch (jan) {
    case 1:
      print('Veg Pizza Price: 300');
      wazir.vegPizza();
    case 2:
      print('Non-Veg Pizza Price: 400');
      wazir.nonVegPizza();
  }
  print('1. Press 1 to add extra cheese: 100 ');
  print('2. Press 2 to add extra topping: 150 ');
  print('3. Press 3 to take away: 20 ');
  print('4. Press 4 to exist ');

  int choice = int.parse('${stdin.readLineSync()}');
  switch (choice) {
    case 1:
      wazir.addExtraCheese();
      print('Your total bill is:');
      wazir.getPizzaBill();
      break;

    case 2:
      wazir.addExtraTopping();
      print('Your total bill is: ');
      wazir.getPizzaBill();
      break;

    case 3:
      wazir.takeAway();
      print('Your total bill is: ');
      wazir.getPizzaBill();
      break;

    case 4:
      print('Existing... ');
      return;
  }
}
