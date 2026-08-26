void main() {
  print('Hello world!'); // print - вывод инфы в консоль
  print(45);
  print(12.45);

  // Комментарий
  /*
  Многострочный 
  комментарий
  */

  String myFreindsName = 'Bob'; // строковый тип данных
  int myAge = 25; // целочисленный тип данных
  double myHeight = 1.75; // тип данных с плавающей точкой
  bool isTeacher = true; // логический тип данных

  print(myFreindsName);
  print(myAge);
  print(myHeight);
  print(isTeacher);

  String myJob; // Создание переменной (объявление) - Значение по умолчанию null
  // print(myJob);
  myJob = 'Dart Developer'; // Присвоение значения переменной (инициализация)
  int mySalary = 5000;
  print(myJob);
  print(mySalary);
  myJob = 'Senior Dart Developer'; // Изменение значения переменной
  mySalary = mySalary + 2000;
  print(myJob);
  print(mySalary);

  // Регистрозависимость и уникальность имен переменных, camelCase, только буквы, цифры и _

  String myPetName1 = 'Buddy';
  String myPetName2 = 'Max';
  // String my pet name = 'Buddy';
  // String 3myPetName = 'Buddy';
  // String my_pet_name = 'Buddy'; // Допустимо, но не принято в стиле Dart

  // Конкатенация - соединение строк
  print(
    'I have a pet its name is ' +
        myPetName1 +
        ' and another one its name is ' +
        myPetName2,
  );
  // print('My height is ' + myHeight + ' and my age is ' + myAge);

  // Интерполяция строк
  print(
    'My height is $myHeight and my age is $myAge years old. I was born in ${2026 - myAge}',
  );

  // Экранирование строк
  print("Today I'm learning Dart Programming language");
  print("Today I'm learning \"Dart\" Programming language");

  String sampleString = '      Hello Dart!      ';
  print(sampleString.length);
  print(sampleString.toUpperCase());
  print(sampleString.toLowerCase());
  print(sampleString.trim());
  print(sampleString.contains('t'));
  print(sampleString.replaceAll('Dart', 'Flutter'));

  // Арифметические операторы
  print(1 + 4);
  print(10 - 4);
  print(2 * 7);
  print(6 / 3);

  print(17 ~/ 5); // Целочисленное деление
  print(7 % 3); // Остаток от деления

  var myVariable = 'Hello'; // Тип данных определяется автоматически -> String
  print(myVariable.toUpperCase());

  var number = 42; // Тип данных определяется автоматически -> int
  print(number + 8);

  final String unChangable = 'This variable can not be changed';
  // unChangable = 'New value'; // Ошибка: Нельзя изменить значение final - оно константно после инициализации

  String? city;
  print(city);
  // print(city.toUpperCase());

  
  // var -> значение может изменяться и тип определяется автоматически
  // final -> значение не может изменяться после инициализации, тип можно указать
}
