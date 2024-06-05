import 'dart:io';

void main() {
  List name = ['wazir', 'asghar', 'muhammad', 'shujaat', 'ali'];
  name[2] = 'tanveer';
  name.add('tatheer');
  for (int i = 0; i < name.length; i++) {
    print(name[i]);
  }
  print('');
  for (var i in name) {
    print(i);
  }
  for (int h = 0; h <= 5; h++) {
    h = int.parse('${stdin.readLineSync()}');
    for (int u = 0; u <= h; u++) {
      print(u);
    }
  }
}
