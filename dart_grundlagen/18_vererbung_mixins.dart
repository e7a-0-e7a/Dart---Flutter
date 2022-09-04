import '18a_vererbungen_mixins.dart';

void main() {
  Student student1 = Student();
  student1.setStudienjahr = 2;
  int studienjahr = student1.getStudienjahr;

  print(studienjahr);

  student1.feiern();
  student1.setName = "patrick";
  student1.laufen();
  student1.lernen();
}
