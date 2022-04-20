import 'dart:io';

void show() {
  print('''Informe o que deseja fazer: 
      01- Calcular renda mensal
      02- Verificar Diferença da poupança
      03- ROIC''');
  int opcao = int.parse(stdin.readLineSync()!);
  print("informe a renda/valor inicial: ");
  double rendaInicial = double.parse(stdin.readLineSync()!);
  print("informe Juros Aplicados: ");
  double jurosAplicados = double.parse(stdin.readLineSync()!);
  print(interfaceInvestimentos(opcao, rendaInicial, jurosAplicados));
}

String interfaceInvestimentos(
    int opcao, double rendaInicial, double jurosAplicados) {
  if (opcao == 1) {
    return "A renda mensal será de: ${calcularRendaMensal(rendaInicial, jurosAplicados)}";
  } else if (opcao == 2) {
    return "A diferença para a poupança é: ${diferencaJurosPupanca(rendaInicial, jurosAplicados)} reais";
  } else if (opcao == 3) {
    return "O ROIC do investimento é: ${tempoDeROIC(rendaInicial, jurosAplicados)}";
  } else {
    return "Opção Inválida";
  }
}

double calcularRendaMensal(double rendaInicial, double jurosAplicados) {
  return (rendaInicial * (jurosAplicados / 12)) + rendaInicial;
}

double diferencaJurosPupanca(double rendaInicial, double jurosAplicados) {
  double rendaInvestimento = (rendaInicial * jurosAplicados) + rendaInicial;
  double rendaPoupanca = (rendaInicial * 0.0617) + rendaInicial;
  return rendaInvestimento - rendaPoupanca;
}

int tempoDeROIC(double taxaInicial, double jurosAplicados) {
  double investimento = (taxaInicial * jurosAplicados);
  int count = 1;
  while (investimento < taxaInicial) {
    investimento = (investimento * jurosAplicados) + investimento;
    count++;
  }
  return count;
}
