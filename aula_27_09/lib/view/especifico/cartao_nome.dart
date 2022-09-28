import 'package:flutter/material.dart';

class CartaoNome extends StatelessWidget {
  Widget build(BuildContext context) {
    var largura = MediaQuery.of(context).size.width;
    return const Center(
      child: Text(
        "André Larrosa",
        style: TextStyle(
            fontSize: 25, color: Colors.black, decoration: TextDecoration.none),
      ),
    );
  }
}
