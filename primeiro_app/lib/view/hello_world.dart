import 'package:flutter/material.dart';

class HelloWorld extends StatelessWidget {
  String? nome;

  mostrarResultado(String resultado, BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Text(
            resultado,
            style: TextStyle(fontSize: 20),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello, World"),
      ),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
                label: Text("Nome:"), hintText: "Informe seu nome"),
            onChanged: (valorDigitado) {
              nome = valorDigitado;
            },
          ),
          ElevatedButton(
            child: Text("Submit"),
            onPressed: () {
              mostrarResultado("Hello World, ${nome}", context);
            },
          )
        ],
      ),
    );
  }
}
