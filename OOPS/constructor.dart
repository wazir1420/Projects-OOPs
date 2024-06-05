void main() {
  wazir name1 = wazir('Wazir Tatheer Abbas', 23, 'wazir');
  wazir name2 = wazir('Hamza', 21, 'Rajput');
  print(name1.name);
  print(name1.age);
  print(name1.caste);
  print(name2.name);
  print(name2.age);
  print(name2.caste);
  name2.printMyName();
  name1.printMyName();
}

class wazir {
  String name = '';
  int age = 0;
  String caste = '';
  wazir(this.name, this.age, this.caste);

  void printMyName() {
    print(name);
  }
}
