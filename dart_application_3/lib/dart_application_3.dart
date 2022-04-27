import 'package:dart_application_3/dart_application_3.dart'
    as dart_application_3;
import 'dart:core';

void main() {
  // Atividade II → Realize as atividades abaixo

  //Exercício 1 - faça a chamada do método adicionarSalario validando se o valor é positivo.
  adicionarSalario(1200.0, 130.0, ePositivo);

  //Exercício 2 - refaça o exe anterior, convertendo a named function em anonymous function.
  adicionarSalario(1200.0, 130.0, (double valor) {
    if (valor > 0) {
      return true;
    } else {
      return false;
    }
  });
  //Exercício 3  - refaça o exe anterior, utilizando a arrow function.
  adicionarSalario(1200.0, 130.0, (double valor) => valor > 0 ? true : false);

  //Exercício 4  - refaça os exe's a, b e c, porém validando se o valor é menor do que o salário.
  // 1
  adicionarSalario2(1200.0, 130.0, isBiggerAndPositive);
  // 2
  adicionarSalario2(1200.0, 130.0, (double salario, double valor) {
    if (salario < valor && valor > 0) {
      return true;
    } else {
      return false;
    }
  });
  // 3
  adicionarSalario2(
      1200.0,
      130.0,
      (double salario, double valor) =>
          (salario < valor && valor > 0) ? true : false);
  //Exercício 5  - refaça o exe c porém fazendo uma validação sua.
  adicionarSalario2(1200.0, 130.0,
      (double salario, double valor) => (valor > salario) ? true : false);
  //Exercício 6 - faça 2 exemplos do uso de funções anônimas utilizando a biblioteca do dart.
  final numbers = <int>[20, 30, 40];
  numbers.forEach((int numero) {
    if (numero > 15) {
      print("maior que 15");
    } else {
      print("menor que 15");
    }
  });

  numbers.forEach((int numero) {
    if (numero > 15) {
      print(numero / 2);
    } else {
      print("menor que 15");
    }
  });

  /*
  Exercício 6 - Conseguiu entender:
    - O contexto em que é útil utilizar funções anônimas?
    R: Callbacks de função
    - Os requisitos necessários para usar funções anônimas? 
    R: parametros
    - diferença entre função nomeada e anônimas?
    R: uma tem e a outra não tem o nome
    - diferença entre anonymous function e arrow function?
    R: Arrow function é somente uma linha
    Em que caso devemos utilizar Arrow Function? O que devemos considerar?
    R: devemos usar quando a função terá uma linha somente com retorno, devemos levar em conta todo o contexto, 
    pois se for uma função complicada de ler é melhor nomeá-la
  */
}

void adicionarSalario(
    double salario, double valor, Function(double valor) validacao) {
  final eValido = validacao(valor);
  if (eValido) {
    final total = salario + valor;
    print(total);
  }
}

void adicionarSalario2(double salario, double valor,
    Function(double valor, double salario) validacao) {
  final eValido = validacao(valor, salario);
  if (eValido) {
    final total = salario + valor;
    print(total);
  }
}

bool isBiggerAndPositive(double salario, double valor) {
  if (salario < valor && valor > 0) {
    return true;
  } else {
    return false;
  }
}

bool ePositivo(double numero) {
  if (numero > 0) {
    return true;
  } else {
    return false;
  }
}
