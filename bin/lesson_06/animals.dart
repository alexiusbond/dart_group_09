enum Color {
  green('\x1B[32m'),
  yellow('\x1B[33m'),
  red('\x1B[31m');

  final String code;

  const Color(this.code);
}

class Animal {
  Color color;
  String name;
  int age;

  static int _counter = 0;

  static void showCounter() {
    print('Produced $_counter animals.');
  }

  Animal(this.color, this.name, this.age) {
    _counter++;
  }

  String getInfo() {
    return 'My name is $name my color is ${color.code}${color.name}\x1B[0m and I\'m $age years old.';
  }
}

class Cat extends Animal {
  Cat(super.color, super.name, super.age);

  void meow() {
    print('$name says meow!');
  }
}

class Dog extends Animal {
  String commands;

  Dog(super.color, super.name, super.age, this.commands);

  void bark() {
    print('$name says woof!');
  }

  @override
  String getInfo() {
    return '${super.getInfo()} And I know $commands commands.';
  }
}

class FightingDog extends Dog {
  int wins;

  FightingDog(super.color, super.name, super.age, super.commands, this.wins);

  void fight() {
    print('The dog is fighting');
  }

  @override
  String getInfo() {
    return '${super.getInfo()} And I have $wins wins.';
  }
}
