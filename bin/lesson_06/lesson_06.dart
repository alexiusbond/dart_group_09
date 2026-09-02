import 'animals.dart';

void main() {
  Animal.showCounter();

  Cat cat = Cat(Color.yellow, 'Tom', 3);
  print(cat.getInfo());
  cat.meow();
  print(cat.color);

  Dog dog = Dog(Color.green, 'Spark', 1, 'Sit');
  dog.bark();
  print(dog.getInfo());
  print(dog.color);

  FightingDog fightingDog = FightingDog(Color.red, 'Reks', 2, 'Fight', 15);
  fightingDog.bark();
  fightingDog.fight();
  print(fightingDog.getInfo());

  if (fightingDog.commands == 'Fight') {
    print('This dog is dangerous');
  }

  if (fightingDog.color == Color.red) {
    print('This dog is beautiful');
  }

  Animal.showCounter();
}
