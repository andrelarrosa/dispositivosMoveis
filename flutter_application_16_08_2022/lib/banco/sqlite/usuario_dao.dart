import 'package:flutter_application_16_08_2022/banco/sqlite/conexao.dart';
import 'package:flutter_application_16_08_2022/banco/sqlite/usuario.dart';
import 'package:sqflite/sqflite.dart';

class UsuarioDAO {
  late Database _db;
  late String _sql;

  Future<bool> salvar(Usuario usuario) async {
    _db = await Conexao.abrirConexao();
    _sql = 'INSERT INTO usuario(nome, senha) VALUES (?,?)';
    int linhasAfetadas =
        await _db.rawInsert(_sql, [usuario.nome, usuario.senha]);
    return linhasAfetadas > 0;
  }

  Future<bool> existsId(dynamic id) async {
    _db = await Conexao.abrirConexao();
    _sql = 'SELECT * FROM usuario WHERE id = ?';
    List<Map<String, Object?>> lista = await _db.rawQuery(_sql, [id]);
    return lista.length > 0;
  }
}
