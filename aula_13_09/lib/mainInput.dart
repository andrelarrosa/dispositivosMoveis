import 'package:aula_13_09/components/input.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MenuInput());
}

class MenuInput extends StatelessWidget {
  const MenuInput({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.all(28),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Input(
                    descricao: "Nome",
                    dica: "Escreva seu nome completo",
                  ),
                  Input(
                    descricao: "Alguma coisa",
                    dica: "Escreva qualquer coisa",
                  )
                ],
              ),
            )));
  }
}
