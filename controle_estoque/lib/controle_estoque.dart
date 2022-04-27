import 'dart:io';

void show() {
  print('''Informe o que deseja fazer: 
01- Acrescentar Quantidade em Estoque
''');
  dynamic result;
  int opcao = int.parse(stdin.readLineSync()!);
  switch (opcao) {
    case 1:
      print("informe a quantidade atual do estoque");
      double quantidadeAtual = double.parse(stdin.readLineSync()!);
      print("informe a quantidade comprada");
      double quantidadeAcrescentada = double.parse(stdin.readLineSync()!);
      result = acrescentarQuantidadeEstoque(
          quantidadeAtual: quantidadeAtual,
          quantidadeAcrescentada: quantidadeAcrescentada);
  }
  print(result);
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
double acrescentarQuantidadeEstoque(
    {double quantidadeAtual = 0, double quantidadeAcrescentada = 0}) {
  return quantidadeAtual + quantidadeAcrescentada;
}
