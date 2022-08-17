import 'package:flutter_application_16_08_2022/calculadora.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late Calculadora calculadora;
  setUp(() {
    calculadora = Calculadora();
  });

  tearDown(() {}); // Depois de cada teste executado

  tearDownAll(() {}); // Depois de todos os testes executados

  group('teste de soma', () {
    test('Teste da classe Calculadora método somar com números positivos', () {
      double n1 = 10.0;
      double n2 = 15.0;
      var resultado = calculadora.somar(n1, n2);
      expect(resultado, 25.0);
    });

    test('Teste da classe Calculadora método somar com número negativo', () {
      double n1 = -10.0;
      double n2 = 15.0;
      var resultado = calculadora.somar(n1, n2);
      expect(resultado, 5.0);
    });
  });
}
