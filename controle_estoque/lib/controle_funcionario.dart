import 'dart:io';

void show() {
  print('''Informe o que deseja fazer: 
      01- Bonificar Funcionário
      02- Descontar Salário do Funcionário
      03- Somar salário com comissão''');
  int opcao = int.parse(stdin.readLineSync()!);
  print("informe o salário do funcionário:");
  double salario = double.parse(stdin.readLineSync()!);
  print("informe o valor da comissao/desconto/bonificação do funcionário:");
  double valor = double.parse(stdin.readLineSync()!);
  String resultado = "";
  if (opcao == 1) {
    resultado = bonificarSalarioFuncionario(salario, valor) > 1212
        ? "maior que salario mínimo"
        : "menor que salario mínimo";
  } else if (opcao == 2) {
    resultado = descontarSalarioFuncionario(salario, valor) > 0
        ? "Total é maior que 0"
        : "Total é menor que 0";
  } else if (opcao == 3) {
    resultado = interfaceSalario(salario, valor,
        (double salario, double valorComissao) {
      if (valorComissao > salario) {
        valorComissao = valorComissao / 2;
        return "o valor é: ${salario + valorComissao}";
      } else {
        return "O valor é: ${salario + valorComissao}";
      }
    });
  } else {
    resultado = "opção inválida";
  }
  print(resultado);
}

String interfaceSalario(double salario, double valor, Function function) {
  return function();
}

double bonificarSalarioFuncionario(double salario, double valorBonus,
    {double limiteBonificacao = 0.5}) {
  double limite = salario * limiteBonificacao;
  if (salario < 0 || valorBonus < 0) {
    throw Exception("O salário e valor de bônus tem que ser positivo");
  }
  if (valorBonus > limite) {
    valorBonus = valorBonus / 2;
    return salario + valorBonus;
  } else {
    return salario + valorBonus;
  }
}

double descontarSalarioFuncionario(double salario, double valorDesconto,
    [double limiteDesconto = 0.5]) {
  double limite = salario * limiteDesconto;
  if (salario < 0 || valorDesconto < 0) {
    throw Exception("O salário e valor de bônus tem que ser positivo");
  }
  if (valorDesconto > limite) {
    valorDesconto = valorDesconto / 2;
    return salario - valorDesconto;
  } else {
    return salario - valorDesconto;
  }
}

double somarComissao({required double salario, required double valorComissao}) {
  try {
    double soma = salario + valorComissao;
    return soma;
  } catch (e) {
    double soma = 0;
    return soma;
  }
}

/*
1) Em que caso os parâmetros nomeados são úteis? 
R: Quando utilizamos vários parâmetros e alguns são obrigatórios e outros não
2) Por padrão os parâmetros nomeados são opcionais ou obrigatórios? Caso sejam opcionais, como torná-los obrigatórios?
R: Opcionais. Adicionando a palavra reservada required antes
3) Qual a sintaxe para fazer a chamada de uma função com os parâmetros nomeados? 
R: verificarAprovacaoParametrosNomeados(nota2: 10, nota1: 10, mediaAprovacao: 6);
4) É possível definir uma única função com parâmetros nomeados e anônimos?
R: sim
5) Quais são as vantagens em utilizar parâmetros nomeados? 
R: vantagem que o compilador sabe o parâmetro, e não preciso respeitar a ordem que foram declaradas as variáveis
6) Quais são as diferenças entre parâmetros nomeados e anônimos?
R: Que o compilador sabe o parâmetro, já o anônimo não

Em relação ao seu projeto
Duas funções com parâmetros opcionais/valor padrão;
Uma função com parâmetros nomeados obrigatórios;
Uma função com parâmetros nomeados opcionais;
Uma função com parâmetros nomeados obrigatórios e opcionais;
Uma única função com parâmetros nomeados e anônimos;
*/

