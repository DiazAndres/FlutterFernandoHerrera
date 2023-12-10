void main() {
  //Streams -> Flujo de datos que puede ser un único valor,
  //ningún valor o una serie de valores a lo largo del tiempo
  emitNumbers().listen((value) {
    print('Stream value: $value');
  });
}

Stream<int> emitNumbers() {
  return Stream.periodic(const Duration(seconds: 1), (value) {
    //print('desde periodic: $value');
    return value;
  }).take(5);
  //Take dice cuantas emisiones
}
