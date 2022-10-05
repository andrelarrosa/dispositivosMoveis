import 'package:aula_27_09/view/especifico/cartao_email.dart';
import 'package:aula_27_09/view/especifico/cartao_nome.dart';
import 'package:aula_27_09/view/especifico/cartao_telefone.dart';
import 'package:aula_27_09/view/especifico/meu_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CartaoRetrato extends StatelessWidget {
  const CartaoRetrato({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitDown]);
    return Container(
      padding: EdgeInsets.all(60),
      decoration: const BoxDecoration(color: Colors.white),
      child: Column(
        children: [MeuAvatar(), CartaoNome(), CartaoTelefone(), CartaoEmail()],
      ),
    );
  }
}
