class Person {
  String _surname;
  String _name;
  int _age;

  Person(this._surname, this._name, this._age) {
    _wasBorn();
  }

  void _wasBorn() {
    print('$_name was born');
  }

  // void setAge(int newAge) {
  //   if (newAge <= 0) {
  //     print('Wrong value for age. It must be positive number');
  //   } else {
  //     _age = newAge;
  //   }
  // }

  set age(int value) {
    if (value <= 0) {
      print('Wrong value for age. It must be positive number');
    } else {
      _age = value;
    }
  }

  // String getName() {
  //   return _name;
  // }

  String get name => _name;
  String get surname => _surname;

  void displayInfo() {
    print('$_surname $_name is $_age years old. Birth year: ${2026 - _age}');
  }
}
