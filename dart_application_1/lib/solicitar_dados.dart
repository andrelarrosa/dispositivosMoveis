import 'dart:io';

void solicitarDadosAluno() {
  print("Informe o seu R.A");
  String? raEntrada = stdin.readLineSync();
  print("Informe o seu nome");
  String? nomeEntrada = stdin.readLineSync();
  print("Informe o seu ano de nascimento");
  String? anoNascimentoEntrada = stdin.readLineSync()!;
  print("Informe a sua serie");
  String? serieEntrada = stdin.readLineSync()!;

  int anoNascimento = int.parse(anoNascimentoEntrada);
  int serie = int.parse(serieEntrada);

  int idade = 2022 - anoNascimento;
  print("=========================");
  print(
      " R.A: $raEntrada\n Nome: $nomeEntrada \n Idade: $idade \n Serie: $serie");
  if (idade >= 18) {
    print(" Maioridade: Maior de Idade");
  } else {
    print(" Maioridade: Menor de Idade");
  }
  print("=========================");
}

void solicitarDadosDisciplina() {
  print("Informe o ID da disciplina");
  String? idEntrada = stdin.readLineSync();
  print("Informe a carga horária da disciplina");
  String? cargaHorariaEntrada = stdin.readLineSync()!;
  print("Informe o nome da disciplina");
  String? nomeDisciplinaEntrada = stdin.readLineSync();
  print("Informe a serie da disciplina");
  String? serieEntrada = stdin.readLineSync()!;

  double cargaHoraria = double.parse(cargaHorariaEntrada);
  double presencaMinima = cargaHoraria * 0.75;
  print("=========================");
  print(
      " ID: $idEntrada\n Carga Horaria: $cargaHoraria \n Nome: $nomeDisciplinaEntrada \n Série: $serieEntrada");
  print("=========================");
}
