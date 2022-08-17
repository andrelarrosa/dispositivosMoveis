import 'dart:math';

import 'package:flutter_application_16_08_2022/banco/sqlite/conexao.dart';
import 'package:flutter_application_16_08_2022/banco/sqlite/usuario.dart';
import 'package:flutter_application_16_08_2022/banco/sqlite/usuario_dao.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

void main() async {
  late Database db;
  late UsuarioDAO DAOUser;
  setUp(() async {
    sqfliteFfiInit();
    databaseFactory =
        databaseFactoryFfi; // permite fazer os testes sem precisar do android
    String caminho = join(await getDatabasesPath(), 'banco.db');
    deleteDatabase(caminho);
    db = await Conexao.abrirConexao();
    DAOUser = UsuarioDAO();
  });

  tearDownAll(() {
    db.close();
  });

  group('teste de conexão', () {
    test("verificar se a conexão está aberta", () {
      expect(db.isOpen, true);
    });


  });
}
