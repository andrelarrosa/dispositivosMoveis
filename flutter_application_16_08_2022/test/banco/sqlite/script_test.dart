import 'package:flutter_application_16_08_2022/banco/sqlite/script.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  setUp(() {});
  tearDown(() {});
  tearDownAll(() {});

  group('teste de comandos do banco de dados:\n', () {
    test('A lista de comandos não pode ser vazia', () {
      var comandos = criarBanco;
      expect(comandos, isNotNull);
    });

    
  });
}
