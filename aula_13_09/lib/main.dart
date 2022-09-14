import 'package:flutter/material.dart';

void main() {
  runApp(const MenuUm());
}

class MenuUm extends StatelessWidget {
  const MenuUm({Key? key}) : super(key: key);

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
        body: centralizar(Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        criarBotao(descricao: "Cliente", funcao: cliqueCliente),
        criarBotao(descricao: "Funcionário", funcao: cliqueFuncionario),
        criarBotao(descricao: "Fornecedor", funcao: cliqueFornecedor),
      ],
    )));
  }

  void cliqueCliente() {
    print("20 linhas de código para o cliente");
  }

  void cliqueFuncionario() {
    print("20 linhas de código para o funcionário");
  }

  void cliqueFornecedor() {
    print("20 linhas de código para o fornecedor");
  }

  Widget criarBotao({required String descricao, required Function funcao}) {
    return SizedBox(
        width: MediaQuery.of(context).size.width,
        child: ElevatedButton.icon(
          style: ElevatedButton.styleFrom(shape: StadiumBorder()),
          label: Text(descricao),
          icon: Icon(Icons.person),
          onPressed: () => {funcao()},
        ));
  }

  Widget centralizar(Column column) {
    return Padding(
        padding: EdgeInsets.all(28),
        child: Center(
          child: column,
        ));
  }
}
