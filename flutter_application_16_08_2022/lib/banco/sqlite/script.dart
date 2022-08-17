final criarBanco = [
  '''
    CREATE TABLE usuario(
      id INTEGER NOT NULL PRIMARY KEY,
      nome TEXT NOT NULL UNIQUE,
      senha TEXT NOT NULL 
    )
  ''',
  '''
    CREATE TABLE tarefa(
      id INTEGER NOT NULL PRIMARY KEY,
      nome TEXT NOT NULL UNIQUE,
      descricao TEXT,
      data_entrega DATE,
      usuario_id INTEGER,
      FOREIGN KEY (usuario_id) references usuario (id)
    )
  '''
];
