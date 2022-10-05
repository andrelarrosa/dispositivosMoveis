import 'package:aula_27_09/view/especifico/cartao_email.dart';
import 'package:aula_27_09/view/especifico/cartao_nome.dart';
import 'package:aula_27_09/view/especifico/cartao_telefone.dart';
import 'package:flutter/material.dart';

class CartaoInfo extends StatefulWidget {
  const CartaoInfo({Key? key}) : super(key: key);

  @override
  State<CartaoInfo> createState() => _CartaoInfoState();
}

class _CartaoInfoState extends State<CartaoInfo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CartaoNome(),
        // CartaoNome(),
        // CartaoNome(),
        // CartaoTelefone(),
        // CartaoEmail(),
      ],
    );
  }
}
