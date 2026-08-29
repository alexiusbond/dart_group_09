import 'car.dart';
import 'person.dart';

void main() {
  print('Start of program');
  int num = 5;
  Car myCar = Car('BMW X6', 2020, 'Red');
  print(num);
  print(myCar);
  myCar.displayInfo();

  Car bestCar = Car('Toyota Camry', 2000, 'Yellow');
  bestCar.displayInfo();
  // bestCar.color = 'Green';
  bestCar.repaint('Green');
  bestCar.displayInfo();

  myCar.drive('Osh');
  myCar.drive('Batken');
  bestCar.drive('Kant');
  bestCar.honk(3);

  Car friendsCar = Car.redHondaFit(2025);
  friendsCar.displayInfo();

  Person friend = Person('Brown', 'Jim', 22);
  // friend.setAge(-23);
  friend.age = -23;
  friend.displayInfo();
  // print('Nice to meet you, ${friend.getName()}');
  print('Nice to meet you, ${friend.name}');

  Person brother = friend;

  friendsCar.owner = friend;
  friendsCar.displayInfo();

  bestCar.owner = friend;
  bestCar.displayInfo();

  // Person man = Person('Smith', 'John', 35);
  //          a = b
  Car fastCar = Car.withOwner('Mercedes Benz 500', 2019, 'Black',  Person('Smith', 'John', 35));
  fastCar.displayInfo();

  print('End of program');
}
