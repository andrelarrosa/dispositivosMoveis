import 'package:flutter/material.dart';
import 'package:flutter_application_05_07_2022/view/tarefa_form.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class ListaTarefas extends StatelessWidget {
  Future<List<Map<String, Object?>>> buscarDados() async {
    String caminho = join(await getDatabasesPath(), "banco1.db");
    Database banco = await openDatabase(
      caminho,
      version: 1,
      onCreate: (db, version) {
        db.execute('''
CREATE TABLE tarefa(
  id INTEGER PRIMARY KEY,
  nome TEXT NOT NULL,
  descricao TEXT NOT NULL
  )
  ''');
        db.execute(
            "INSERT INTO tarefa(nome, descricao) VALUES ('Ver meu anjo','<3')");
        db.execute(
            "INSERT INTO tarefa(nome, descricao) VALUES ('teste2','teste2')");
        db.execute(
            "INSERT INTO tarefa(nome, descricao) VALUES ('teste3','teste3')");
      },
    );
    List<Map<String, Object?>> lista =
        await banco.rawQuery('SELECT * FROM tarefa');
    return lista;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lista de Tarefas"),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.pushNamed(context, "/formTarefa");
            },
          ),
          IconButton(
            icon: Icon(Icons.people_alt_rounded),
            onPressed: () {
              Navigator.pushNamed(context, "/usuarios");
            },
          )
        ],
      ),
      body: FutureBuilder(
        future: buscarDados(),
        builder:
            (context, AsyncSnapshot<List<Map<String, Object?>>> dadosFuturos) {
          if (!dadosFuturos.hasData) return const CircularProgressIndicator();
          var listaTarefa = dadosFuturos.data!;
          return ListView.builder(
              itemCount: listaTarefa.length,
              itemBuilder: (context, index) {
                var tarefa = listaTarefa[index];
                return ListTile(
                  title: Text(tarefa['nome'].toString()),
                  subtitle: Text(tarefa['descricao'].toString()),
                  trailing: ElevatedButton(
                    child: Icon(Icons.delete),
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              content: Text("Tem certeza que deseja excluir?"),
                              actions: [
                                ElevatedButton(
                                  child: Text("Sim"),
                                  onPressed: () {
                                    TarefaForm form = new TarefaForm();
                                    form.excluir(
                                        int.parse(tarefa['id'].toString()));
                                    Navigator.pushNamed(context, '/');
                                  },
                                ),
                                ElevatedButton(
                                  child: Text("Não"),
                                  onPressed: () {
                                    Navigator.pushNamed(context, '/');
                                  },
                                ),
                              ],
                            );
                          });
                    },
                  ),
                );
              });
        },
      ),
    );
  }
}
