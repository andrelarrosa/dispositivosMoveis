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
    resultado =
        interfaceSalario(salario, valor, (double salario, double valorBonus) {
      double total = salario + valorBonus;
      return total > 1212
          ? "total maior do que o salário mínimo"
          : "total menor do que o salário mínimo";
    });
  } else if (opcao == 2) {
    resultado = interfaceSalario(salario, valor,
        (double salario, double valorDesconto) {
      double total = salario - valorDesconto;
      return total > 0 ? "Total é maior que 0" : "Total é menor que 0";
    });
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

bool bonificarSalarioFuncionario(double salario, double valorBonus) {
  double total = salario + valorBonus;
  return total >= 1212;
}

bool descontarSalarioFuncionario(double salario, double valorDesconto) {
  double total = salario - valorDesconto;
  return total > 0;
}

double somarComissao(double salario, double valorComissao) {
  if (valorComissao > salario) {
    valorComissao = valorComissao / 2;
    return salario + valorComissao;
  } else {
    return salario + valorComissao;
  }
}
