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
  print("Informe a % de presença e média de aprovação");
  String? presencaEntrada = stdin.readLineSync()!;

  double cargaHoraria = double.parse(cargaHorariaEntrada);
  double presenca = double.parse(presencaEntrada);
  double presencaMinima = cargaHoraria * (presenca / 100);
  print("=========================");
  print(
      " ID: $idEntrada\n Carga Horaria: $cargaHoraria \n Nome: $nomeDisciplinaEntrada \n Série: $serieEntrada \n Presença Mínima: $presencaMinima");
  print("=========================");
}

String verificarAprovacaoPorFaltas(double presencaMinima) {
  print("Informe o quantitativo de presença:");
  String? presencaEntrada = stdin.readLineSync()!;
  double presenca = double.parse(presencaEntrada);
  if (presencaMinima <= presenca) {
    return "Aprovado";
  } else {
    return "Reprovado por faltas";
  }
}

String verificarNotaAcimaDaMedia() {
  print("Informe sua nota:");
  String notaEntrada = stdin.readLineSync()!;
  double nota = double.parse(notaEntrada);
  if (nota >= 60) {
    return "Acima da media";
  } else {
    return "Abaixo da media";
  }
}

void calcularMediaMenorMaior() {
  print("Informe a 1ª nota:");
  double nota1 = double.parse(stdin.readLineSync()!);
  print("Informe a 2ª nota:");
  double nota2 = double.parse(stdin.readLineSync()!);
  print("Informe a 3ª nota:");
  double nota3 = double.parse(stdin.readLineSync()!);
  double media = (nota1 + nota2 + nota3) / 3;

  if (nota1 >= nota3 && nota1 >= nota2) {
    print("Sua maior nota é: $nota1\n e sua média é: $media");
  } else if (nota3 >= nota1 && nota3 >= nota2) {
    print("Sua maior nota é $nota2\n e sua média é: $media");
  } else {
    print("Sua maior nota é $nota3\n e sua média é: $media");
  }
}

void verificarAprovacao(double presencaMinima) {
  print("Informe sua média:");
  double nota = double.parse(stdin.readLineSync()!);
  print("Informe sua frequência:");
  double frequencia = double.parse(stdin.readLineSync()!);
  if (nota >= 60 && frequencia >= presencaMinima) {
    print("Aprovado");
  } else if (nota <= 60 && frequencia >= presencaMinima) {
    print("Reprovado por conceito");
  } else if (nota >= 60 && frequencia <= presencaMinima) {
    print("Reprovado por faltas");
  } else {
    print("Reprovado por faltas e conceito");
  }
}

void verificarAprovacaoZeroADez() {
  print("Informe sua nota:");
  double nota = double.parse(stdin.readLineSync()!);
  if (nota < 0 || nota > 10) {
    print("Você deve preencher com um número de 0 à 10");
  } else if (nota < 6) {
    print("Informe sua nota da recuperacao:");
    double notaRecuperacao = double.parse(stdin.readLineSync()!);
    double media = (nota + notaRecuperacao) / 2;
    if (media > 6) {
      print("Aprovado");
    } else {
      print("Reprovado");
    }
  } else {
    print("Aprovado");
  }
}

void solicitarDadosTresAlunos() {
  for (int i = 0; i < 3; i++) {
    print("Informe o seu R.A");
    String? raEntrada = stdin.readLineSync();
    print("Informe o seu nome");
    String? nomeEntrada = stdin.readLineSync();
    print("Informe a sua serie");
    String? serieEntrada = stdin.readLineSync()!;
  }
}

void solicitarDadosVariosAlunos() {
  bool decisao = true;
  while (decisao) {
    print("Informe o seu R.A");
    String? raEntrada = stdin.readLineSync();
    print("Informe o seu nome");
    String? nomeEntrada = stdin.readLineSync();
    print("Informe a sua serie");
    String? serieEntrada = stdin.readLineSync()!;
    print("gostaria de informar mais um aluno? (S/N)");
    String? decisaoEntrada = stdin.readLineSync().toString();
    decisao = (decisaoEntrada.toLowerCase() == 's') ? false : true;
  }
}

void solicitarDadosDuasDisciplinas() {
  for (int i = 0; i < 2; i++) {
    print("Informe o ID da disciplina");
    String? idEntrada = stdin.readLineSync();
    print("Informe a carga horária da disciplina");
    String? cargaHorariaEntrada = stdin.readLineSync()!;
    print("Informe o nome da disciplina");
    String? nomeDisciplinaEntrada = stdin.readLineSync();
    print("Informe a serie da disciplina");
    String? serieEntrada = stdin.readLineSync()!;
  }
}

void solicitarDisciplinas() {
  bool decisao = true;
  while (decisao) {
    print("Informe o ID da disciplina");
    String? idEntrada = stdin.readLineSync();
    print("Informe a carga horária da disciplina");
    String? cargaHorariaEntrada = stdin.readLineSync()!;
    print("Informe o nome da disciplina");
    String? nomeDisciplinaEntrada = stdin.readLineSync();
    print("Informe a serie da disciplina");
    String? serieEntrada = stdin.readLineSync()!;
    print("gostaria de informar mais uma disciplina? (S/N)");
    String? decisaoEntrada = stdin.readLineSync().toString();
    decisao = (decisaoEntrada.toLowerCase() == 's') ? false : true;
  }
}

void verificarAprovacaoAlunos() {
  bool decisao = true;
  print("Informe a % de presença e média de aprovação");
  String? presencaEntrada = stdin.readLineSync()!;
  double presencaMinima = double.parse(presencaEntrada);
  while (decisao) {
    verificarAprovacao(presencaMinima);
    print("gostaria de informar mais uma disciplina? (S/N)");
    String? decisaoEntrada = stdin.readLineSync().toString();
    decisao = (decisaoEntrada.toLowerCase() == 's') ? false : true;
  }
}
