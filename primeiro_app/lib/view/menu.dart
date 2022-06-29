import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  Widget criarBotao(String nomeBotao, VoidCallback funcao) {
    return ElevatedButton(
      child: Text(nomeBotao),
      onPressed: funcao,
    );
  }

  @override
  Widget build(BuildContext context) {
    var primeiroBotao = criarBotao("Hello, World", () {
      print("Michele linda");
    });
    var segundoBotao = ElevatedButton(
      child: Text("VAI MENINO"),
      onPressed: () {
        print("TE AMO <3");
      },
    );
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            criarBotao("1º", () {}),
            criarBotao("Calcular Idade", () {
              Navigator.pushNamed(context, "/calcularIdade");
            }),
            criarBotao("Hello World", () {
              Navigator.pushNamed(context, "/helloWorld");
            }),
            criarBotao("Calculadora", () {
              Navigator.pushNamed(context, "/calculadora");
            }),
            criarBotao("5º", () {}),
          ],
        ),
      ),
    );
  }
}
