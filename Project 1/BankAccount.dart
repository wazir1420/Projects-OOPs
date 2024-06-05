import 'dart:io';

class Bank {
  double balance;
  Bank(this.balance);
  void deposit(double amount) {
    if (amount > 0) {
      balance += amount;
      print('Deposit of $amount Successfully');
    } else {
      print('Invalid Amount');
    }
  }

  void withdraw(double amount) {
    if (amount > 0 && amount <= balance) {
      balance -= amount;
      print('Withdraw of $amount Successfully');
    } else {
      print('You do not have sufficient balance');
    }
  }

  void sendAmount(double amount) {
    print('Enter the Account number you want to send Amount: ');
    int number = int.parse('${stdin.readLineSync()}');
    if (amount > 0 && amount <= balance) {
      balance -= amount;
      print('You have send of $amount to $number');
    } else {
      print('You do not have sufficient balance');
    }
  }

  void checkBalance() {
    print('Your balance is $balance');
  }
}

void main() {
  var account = Bank(1500.0);
  var user = 'wazir@gmail.com';
  int pass = 142065;
  print('Enter Your Username: ');
  var username = stdin.readLineSync();
  print('Enter Your password: ');
  int password = int.parse('${stdin.readLineSync()}');
  if (username == user && password == pass) {
    while (true) {
      print('Welcome to the Bank Management Systerm');
      print('1. Deposit');
      print('2. Withdraw');
      print('3. Check Balance');
      print('4. Send Amount');
      print('5. Exist');

      int choice = int.parse('${stdin.readLineSync()}');
      switch (choice) {
        case 1:
          print('Enter amount to be deposited');
          double amount = double.parse('${stdin.readLineSync()}');
          if (amount != 0) {
            account.deposit(amount);
          } else {
            print('Invalid');
          }
          break;
        case 2:
          print('Enter amount to be Withdraw');
          double amount = double.parse('${stdin.readLineSync()}');
          if (amount != 0) {
            account.withdraw(amount);
          } else {
            print('Invalid');
          }
          break;
        case 3:
          account.checkBalance();
        case 4:
          print('Enter amount you want to send:k');
          double amount = double.parse('${stdin.readLineSync()}');
          if (amount != 0) {
            account.sendAmount(amount);
          } else {
            print('Invalid');
          }
        case 5:
          print('Existing.....');
          return;
        default:
          print('Invalid choice');
      }
    }
  } else {
    print('Sorry Wrong Input');
  }
}
