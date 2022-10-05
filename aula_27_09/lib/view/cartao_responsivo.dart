import 'package:aula_27_09/view/cartao_info.dart';
import 'package:aula_27_09/view/especifico/cartao_email.dart';
import 'package:aula_27_09/view/especifico/cartao_nome.dart';
import 'package:aula_27_09/view/especifico/cartao_telefone.dart';
import 'package:aula_27_09/view/especifico/meu_avatar.dart';
import 'package:flutter/material.dart';

class CartaoResponsivo extends StatefulWidget {
  const CartaoResponsivo({Key? key}) : super(key: key);

  @override
  State<CartaoResponsivo> createState() => _CartaoResponsivoState();
}

class _CartaoResponsivoState extends State<CartaoResponsivo> {
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        return Scaffold(
          body: GridView.count(
            crossAxisCount: (orientation == Orientation.portrait) ? 1 : 2,
            children: [MeuAvatar(), CartaoInfo()],
          ),
        );
      },
    );
  }
}
