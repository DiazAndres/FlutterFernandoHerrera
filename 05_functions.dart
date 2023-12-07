void main() {
  print(greetEveryone());

  print('Suma ${addTwoNumbers(18, 20)}');

  print(greetPerson(name: 'Andrés', message: 'Hi,'));
}

String greetEveryone() => 'Hello everyone!';

int addTwoNumbers(int a, int b) => a + b;

//Parámetro de forma opcional va con [ ]
int addTwoNumbersOptional(int a, [int b = 0]) => a + b;

//{} se utilizan para hacer los parametros opcionales
//required para hacer obligatorio el parametro
String greetPerson({required String name, String message = 'Hola,'}) {
  return '$message $name';
}
