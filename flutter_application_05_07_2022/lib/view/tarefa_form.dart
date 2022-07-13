import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class TarefaForm extends StatelessWidget {
  String? nome;
  String? descricao;
  int? id;

  Future<int> salvar(String nome, String descricao, [int? id]) async {
    String caminho = join(await getDatabasesPath(), 'banco1.db');
    Database banco = await openDatabase(caminho, version: 1);
    String sql;
    Future<int> linhasAfetadas;
    if (id == null) {
      sql = "INSERT INTO tarefa (nome, descricao) VALUES (?,?)";
      linhasAfetadas = banco.rawInsert(sql, [nome, descricao]);
    } else {
      sql = "UPDATE tarefa SET nome = ?, descricao = ? WHERE id = ?";
      linhasAfetadas = banco.rawUpdate(sql, [nome, descricao, id]);
    }
    return linhasAfetadas;
  }

  Future<int> excluir(int id) async {
    String caminho = join(await getDatabasesPath(), 'banco1.db');
    Database banco = await openDatabase(caminho, version: 1);
    String sql = "DELETE FROM tarefa WHERE id = ?";
    Future<int> linhaAfetada;
    linhaAfetada = banco.rawDelete(sql, [id]);
    return linhaAfetada;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Cadastro de Tarefas")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                  label: Text("Nome da tarefa"),
                  hintText: "Digite o nome da tarefa"),
              onChanged: (valorDigitado) {
                nome = valorDigitado;
              },
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  label: Text("Descricao"),
                  hintText: "Digite a descrição da tarefa"),
              onChanged: (valorDigitado) {
                descricao = valorDigitado;
              },
            ),
            ElevatedButton(
              child: Text("Salvar"),
              onPressed: () {
                salvar(nome!, descricao!, null);
              },
            )
          ],
        ),
      ),
    );
  }
}
