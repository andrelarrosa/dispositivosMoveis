import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class Usuario extends StatelessWidget {
  Future<List<Map<String, Object?>>> buscarDados() async {
    String caminhoBanco = join(await getDatabasesPath(), 'banco.db');
    deleteDatabase(caminhoBanco);
    Database banco = await openDatabase(
      caminhoBanco,
      version: 1,
      onCreate: (db, version) {
        db.execute('''
    CREATE TABLE usuario(
      id INTEGER PRIMARY KEY,
      nome TEXT NOT NULL,
      senha TEXT NOT NULL
    )
''');
        db.execute(
            "INSERT INTO usuario(nome, senha) VALUES ('Michele Dantas Da Silva', '123')");
        db.execute(
            "INSERT INTO usuario(nome, senha) VALUES ('André Larrosa', '254898')");
      },
    );
    List<Map<String, Object?>> listaUsuarios =
        await banco.rawQuery('SELECT * FROM usuario');
    return listaUsuarios;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Usuários"),
      ),
      body: FutureBuilder(
        future: buscarDados(),
        builder: (context, AsyncSnapshot<List<Map<String, Object?>>> snapshot) {
          if (!snapshot.hasData) return const CircularProgressIndicator();
          var listaUsuario = snapshot.data!;
          return ListView.builder(
            itemCount: listaUsuario.length,
            itemBuilder: (context, index) {
              var usuario = listaUsuario[index];
              return ListTile(
                title: Text(usuario['nome'].toString()),
                subtitle: Text(usuario['senha'].toString()),
              );
            },
          );
        },
      ),
    );
  }
}
