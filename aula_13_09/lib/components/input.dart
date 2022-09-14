import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  String descricao;
  String dica;
  Input({Key? key, required this.descricao, required this.dica})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return TextFormField(
      decoration: InputDecoration(label: Text(descricao), hintText: dica),
    );
  }
}
