import 'dart:io';

void funcao() {
  String nomeProduto = "Chocolate";
  String entradaPreco = "3.55";
  double preco = double.parse(entradaPreco);
  double precoProduto = 2.20;
  String entradaQuantidade = "0x1E";
  int quantidade = int.parse(entradaQuantidade);
  int quantidadeProduto = 3;
  String? descricao; // precisa de variável null, coloca ?
  dynamic dinamica = "vai menino";
  dinamica = 213123123; // variável dinâmica

  print("Informe seu nome:");
  var a = stdin.readByteSync(); // scanner
  print(a);
  print("RELATÓRIO DE PRODUTOS");
  print(
      "Produto: ${nomeProduto}\nPreço: $precoProduto\nQuantidade: $quantidadeProduto");
  descricao = "====================";
  print(descricao);
  print("Produto: ${nomeProduto}\nPreço: $preco\nQuantidade: $quantidade");
  print(descricao);
}
