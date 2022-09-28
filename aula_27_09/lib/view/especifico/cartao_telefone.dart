import 'package:aula_27_09/view/generico/painel_telefone.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CartaoTelefone extends StatelessWidget {
  const CartaoTelefone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: const Text("Telefone"),
        subtitle: const Text("44 99871-1836"),
        trailing: PainelTelefone(
          funcaoTelefone: chamarTelefone,
          funcaoSms: chamarSms,
        ),
      ),
    );
  }

  chamarTelefone() {
    launchUrl(Uri(scheme: "tel", path: '(44) 99871-1836'));
  }

  chamarSms() {
    launchUrl(Uri(scheme: "sms", path: '(44) 99871-1836'));
  }
}
