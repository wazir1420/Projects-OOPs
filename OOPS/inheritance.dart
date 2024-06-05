void main() {
  Dog dog1 = Dog('tenu', 5);
  Cat cat1 = Cat('janu', 3);
  print('My name is ${dog1.name}');
  dog1.eat();
  dog1.breeth();
  dog1.bark();
  print('My name is ${cat1.name}');
  cat1.eat();
  cat1.mia();
}

class Animal {
  String name = '';
  int age = 0;
  Animal(this.name, this.age);

  void eat() {
    print('$name is eating');
  }

  void breeth() {
    print('$name is eating');
  }

  void walk() {
    print('$name is walking');
  }
}

class Dog extends Animal {
  Dog(super.name, super.age);

  void bark() {
    print('$name is barking');
  }
}

class Cat extends Animal {
  Cat(super.name, super.age);
  void mia() {
    print('$name is miaving');
  }
}
