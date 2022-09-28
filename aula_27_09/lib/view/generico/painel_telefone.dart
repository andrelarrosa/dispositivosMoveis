import 'package:aula_27_09/view/generico/botao_sms.dart';
import 'package:aula_27_09/view/generico/botao_telefone.dart';
import 'package:flutter/material.dart';

class PainelTelefone extends StatelessWidget {
  final VoidCallback funcaoTelefone;
  final VoidCallback funcaoSms;
  const PainelTelefone(
      {Key? key, required this.funcaoTelefone, required this.funcaoSms})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var largura = MediaQuery.of(context).size.width;
    return SizedBox(
      width: largura / 4,
      child: Row(
        children: [
          BotaoSms(
            function: funcaoSms,
          ),
          BotaoTelefone(
            function: funcaoTelefone,
          )
        ],
      ),
    );
  }
}
