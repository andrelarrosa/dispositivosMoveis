import 'package:flutter/material.dart';

class Botao extends StatelessWidget {
  String descricao;
  Function funcao;
  Botao({Key? key, required this.descricao, required this.funcao})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(
        width: MediaQuery.of(context).size.width,
        child: ElevatedButton.icon(
          style: ElevatedButton.styleFrom(shape: StadiumBorder()),
          label: Text(descricao),
          icon: Icon(Icons.person),
          onPressed: () => {funcao},
        ));
  }
}
