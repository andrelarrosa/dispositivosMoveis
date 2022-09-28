import 'package:aula_27_09/view/generico/botao_email.dart';
import 'package:flutter/material.dart';

class PainelEmail extends StatelessWidget {
  final VoidCallback funcaoEmail;

  const PainelEmail({Key? key, required this.funcaoEmail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var largura = MediaQuery.of(context).size.width;
    return SizedBox(
      width: largura / 7,
      child: Row(
        children: [
          BotaoEmail(
            function: funcaoEmail,
          )
        ],
      ),
    );
  }
}
