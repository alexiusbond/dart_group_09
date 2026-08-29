import 'person.dart';

class Car {
  // Поля / атрибуты
  String model;
  int year;
  String color;
  Person? owner; // у машины ЕСТЬ владелец - композиция

  // Конструктор
  // Car(String model, int year, String color){
  //   this.model = model;
  //   this.year = year;
  //   this.color = color;
  // }

  // Конструктор с инициализирующим списком
  // Car(String model, int year, String color)
  //   : this.model = model,
  //     this.year = year,
  //     this.color = color;

  // Конструктор с параметрами, присваивающимися напрямую
  Car(this.model, this.year, this.color);
  // Именованные конструкторы, c инициализирующим списком
  Car.redHondaFit(this.year) : model = 'Honda Fit', color = 'Red';
  Car.withOwner(this.model, this.year, this.color, this.owner);

  // методы
  void drive(String city) {
    print('Car $model is driving to $city');
  }

  void repaint(String newColor) {
    color = newColor;
  }

  void honk(int numberOfTimes) {
    while (numberOfTimes > 0) {
      print('Beeep');
      numberOfTimes--;
    }
  }

  void displayInfo() {
    if (owner != null) {
      print(
        'MODEL: $model YEAR: $year COLOR: $color OWNER: Mr/Mrs. ${owner!.surname}',
      );
    } else {
      print('MODEL: $model YEAR: $year COLOR: $color');
    }
  }
}
