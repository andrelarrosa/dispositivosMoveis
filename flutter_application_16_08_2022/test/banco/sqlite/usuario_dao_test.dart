import 'package:flutter_application_16_08_2022/banco/sqlite/conexao.dart';
import 'package:flutter_application_16_08_2022/banco/sqlite/usuario.dart';
import 'package:flutter_application_16_08_2022/banco/sqlite/usuario_dao.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

void main() {
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

  group('Teste do DAO do Usuário', () {
    test('Criando um registro no banco', () async {
      var user = Usuario(nome: "André Larrosa", senha: "123456");
      var result = await DAOUser.salvar(user);
      expect(result, true);
    });

    test('Não existe este id', () async {
      var result = await DAOUser.existsId(1);
      expect(result, false);
    });
  });
}
