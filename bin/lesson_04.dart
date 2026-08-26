void main() {
  // DRY - don't repeat yourself
  print('ЗАВТРАК');
  makeTea();

  print('ОБЕД');
  makeTea();

  print('УЖИН');
  makeTea();

  addition(3, 5, 'Сумма');
  addition(10, 2, 'Результат');

  calculatePerimeter('Аудитория 1', 5.5, 6);
  calculatePerimeter('Кухня', 4.5, 5);
  calculatePerimeter('Холл', 10, 8);

  int areaOfHall = calculateArea(10, 8);
  int areaOfKitchen = calculateArea(4.5, 5);
  int areaOfAuditory1 = calculateArea(5.5, 6);

  print('Площадь комнаты Аудитории 1 = $areaOfAuditory1 кв.м.');
  print('Площадь комнаты Кухни = $areaOfKitchen кв.м.');
  print('Площадь комнаты Холл = $areaOfHall кв.м.');
  print(
    'ОБЩАЯ ПЛОЩАДЬ = ${areaOfAuditory1 + areaOfKitchen + areaOfHall} кв.м.',
  );
  print('Цена по Бишкеку: ${calculateShippingCost(weight: 5, city: 'Бишкек')}');
  print(
    'Цена до города Ош: ${calculateShippingCost(pricePerKg: 100, weight: 2, city: 'Ош')}',
  );

  print(globalVariable);
}

double calculateShippingCost({
  required String city,
  required double weight,
  int pricePerKg = 200,
}) {
  if (city.toLowerCase() == 'бишкек') {
    return weight * pricePerKg;
  } else {
    return weight * pricePerKg * 2;
  }
}

int calculateArea(double length, double width) {
  double area = length * width;
  return area.round();
}

void calculatePerimeter(String room, double length, double width) {
  double perimeter = 2 * (length + width);
  print('Периметр комнаты $room = $perimeter м.');
}

void addition(int num1, int num2, String phrase) {
  int result = num1 + num2;
  print('$phrase: $result');
}

double globalVariable = 11;

void scopeVariable(int paramVariable) {
  print(paramVariable);
  // print(localVariable);
  int localVariable = 9;
  print(localVariable);
  if (paramVariable > 0) {
    print(localVariable);
    int ifBlockVariable = 1;
    print(ifBlockVariable);
  }
  // print(ifBlockVariable);
  print(globalVariable);
}

void makeTea() {
  print('Вскипятить воду');
  print('Насыпать заварку');
  print('Залить кипятком');
  print('Дать настояться');
  print('Налить в чашку');
  print('Добавить молоко или сахар по-вкусу');
  // print(paramVariable);
}
