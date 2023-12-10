void main() async {
  print('Inicio del programa');
  try {
    final value = await httpGet('https://google.com');
    print('Exito: $value');
  } on Exception catch (err) {
    //Excepción controlada que sabemos que sucederá, pasa por aquí
    print('Tenemos una Exception: $err');
  } catch (err) {
    print('Algo terrible pasó: $err');
  } finally {
    //No importa si se va al try o al catch siempre ejecuta el finally
    print('Fin del try y catch');
  }

  print('Fin del programa');
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));
  throw Exception('No hay parámetros en el URL');

  //throw 'Error en la petición';
  //return 'Tenemos un valor de la petición';
}
