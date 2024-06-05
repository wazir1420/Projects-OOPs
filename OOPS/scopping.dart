void main() {
  karim car1 = karim(make: 2000, colour: 'blue', model: 2000, company: 'BMW');
  karim car2 =
      karim(model: 2020, colour: 'Jet Black', make: 2020, company: 'HONDA');
  karim car3 = karim(
      make: 1999, model: 2019, colour: 'Sky Blue', company: 'RANGE ROYALS');
  print(car1.colour);
  car1.colours();
  car3.colours();
  car2.colours();
}

class karim {
  int make = 0;
  int model = 0;
  String colour = '';
  String company = '';

  karim({make, model, colour, company}) {
    //karim(this.make, this.model, this.colour, this.company);
    this.make = make;
    this.model = model;
    this.colour = colour;
    this.company = company;
  }
  void makes() {
    print(make);
  }

  void models() {
    print(model);
  }

  void colours() {
    print(colour);
  }

  void companies() {
    print(company);
  }
}
