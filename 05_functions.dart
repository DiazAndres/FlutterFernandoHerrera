void main(){
  print(greetEveryone());

  print('Suma ${addTwoNumbers(18,20)}');
}


String greetEveryone() => 'Hello everyone!';


int addTwoNumbers(int a, int b) => a + b;

//Parámetro de forma opcional va con [ ]
int addTwoNumbersOptional(int a, [int b = 0]) => a + b;
