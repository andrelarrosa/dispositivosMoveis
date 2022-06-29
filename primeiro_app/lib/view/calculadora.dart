import 'package:flutter/material.dart';

class Calculadora extends StatelessWidget {
  String resultado = '';
  final result = [0.0, 0.0];
  String operacao = '+';
  Widget criarBotao(String nomeBotao, VoidCallback funcao) {
    return ElevatedButton(
      child: Text(nomeBotao),
      onPressed: funcao,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                criarBotao("1", () {
                  resultado += "1";
                }),
                criarBotao("2", () {
                  resultado += "2";
                }),
                criarBotao("3", () {
                  resultado += "3";
                }),
              ],
            ),
            Row(
              children: [
                criarBotao("4", () {
                  resultado += "4";
                }),
                criarBotao("5", () {
                  resultado += "5";
                }),
                criarBotao("6", () {
                  resultado += "6";
                }),
              ],
            ),
            Row(
              children: [
                criarBotao("7", () {
                  resultado += "7";
                }),
                criarBotao("8", () {
                  resultado += "8";
                }),
                criarBotao("9", () {
                  resultado += "9";
                }),
              ],
            ),
            Row(
              children: [
                criarBotao("-", () {
                  operacao = '-';
                  result[0] = double.parse(resultado);
                  resultado = '';
                }),
                criarBotao("0", () {
                  resultado += "0";
                }),
                criarBotao("+", () {
                  operacao = '+';
                  result[0] = double.parse(resultado);
                  resultado = '';
                }),
              ],
            ),
            Row(
              children: [
                criarBotao("=", () {
                  if (resultado == '') {
                    print("0");
                  } else {
                    result[1] = double.parse(resultado);
                    double conta = 0.0;
                    switch (operacao) {
                      case "+":
                        conta = result[0] + result[1];
                        break;
                      case "-":
                        conta = result[0] - result[1];
                        break;
                    }
                    print(conta);
                  }
                }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
