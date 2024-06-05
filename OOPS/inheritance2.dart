void main() {
  Doctor d1 = Doctor('Doctor');
  Nurse n1 = Nurse('Nurse');
  d1.giveInjection();
  d1.giveMedical();
  d1.operation();
  n1.followInstruction();
  n1.giveInjection();
  n1.treatment();
}

class MedicalSypecialist {
  String name = "";
  int age = 0;
  MedicalSypecialist(this.name);

  void treatment() {
    print('$name is treat patient');
  }

  void giveMedical() {
    print('$name is giving medical to the patient');
  }

  void giveInjection() {
    print('$name is giving injection to the patient');
  }
}

class Doctor extends MedicalSypecialist {
  Doctor(super.name);
  void makeReport() {
    print('$name is making report to the patient');
  }

  void operation() {
    print('$name operating patient');
  }
}

class Nurse extends MedicalSypecialist {
  Nurse(super.name);
  void followInstruction() {
    print('$name is folowing doctor instruction');
  }
}
