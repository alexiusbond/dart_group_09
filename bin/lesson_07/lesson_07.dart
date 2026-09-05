import 'animals.dart';
import 'transports.dart';
import 'interfaces.dart';
import 'mixins.dart';

void main() {
  // Start of program
  Cat cat = Cat('Tom', 2);
  Plane plane = Plane();

  List<Drawable> drawables = [
    cat,
    plane,
    Parrot('Polly', 1),
    Snake('Kaa', 10),
    Car(),
  ];
  for (Drawable d in drawables) {
    drawAllVariants(d);
    if (d is Animal) {
      Animal a = d as Animal; // type casting
      a.makeVoice();
    }
    if(d is Fly){
      (d as Fly).fly(d.runtimeType.toString());
    }
    if(d is Playable){
      (d as Playable).play();
    }
  }
}

void drawAllVariants(Drawable d) {
  d.draw();
  print(d.draw3D('plastic'));
}
