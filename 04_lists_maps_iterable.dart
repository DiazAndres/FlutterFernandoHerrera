void main() {
  //Lista se ve en [   ]
  final numbers = [1,2,3,4,5,5,5,6,7,8,9,9,10];
  
  print('List original $numbers');
  print('Length ${numbers.length}');
  print('Index 0: ${numbers[0]}');
  print('First: ${numbers.first}');
  print('Last: ${numbers.last}');
  
  
  print('Reversed: ${numbers.reversed}');
  
  final reversedNumbers = numbers.reversed;
  //Iterable viene entre (   )
  print('Iterable: $reversedNumbers');
  print('List: ${reversedNumbers.toList()}');
  //Set son datos irrepetibles, se presenta en {}
  //Set puede eliminar duplicados
  print('Set: ${reversedNumbers.toSet()}');
  
  final numbersGreaterThan5 = numbers.where((int num){
    return num > 5;
  });
  
  print('>5 Iterable: ${numbersGreaterThan5.toSet()}');
  print('>5 Set: ${numbersGreaterThan5.toSet()}');
  
}
