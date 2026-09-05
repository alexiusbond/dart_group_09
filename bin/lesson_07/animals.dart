import 'interfaces.dart';
import 'mixins.dart';

// Можно наследовать.
// Может содержать готовые методы.
// Может иметь абстрактные методы, которые наследник обязан реализовать.
abstract class Animal implements Drawable {
  String name;
  int age;

  Animal(this.name, this.age);

  void sleep() {
    print('$name is sleeping.');
  }

  void makeVoice();
}

class Cat extends Animal implements Playable {
  Cat(super.name, super.age);

  @override
  void makeVoice() {
    print('Meow.');
  }

  @override
  void draw() {
    print('🐈');
  }

  @override
  String draw3D(String material) {
    return 'Cat is drawn in 3D with $material';
  }

  @override
  void play() {
    print('Cat plays with ball.');
  }
}

class Parrot extends Animal with Fly implements Playable {
  Parrot(super.name, super.age);

  @override
  void makeVoice() {
    print('Chik chirik');
  }

  @override
  void draw() {
    print('🦜');
  }

  @override
  String draw3D(String material) {
    return 'Parrot is drawn in 3D with $material';
  }

  @override
  void play() {
    print('Plays by mimicking sound.');
  }
}

abstract class Reptile extends Animal {
  Reptile(super.name, super.age);
}

class Snake extends Reptile {
  Snake(super.name, super.age);

  @override
  void makeVoice() {
    print('Ssssss.');
  }

  @override
  void draw() {
    print('🐍');
  }

  @override
  String draw3D(String material) {
    return 'Snake is drawn in 3D with $material';
  }
}
