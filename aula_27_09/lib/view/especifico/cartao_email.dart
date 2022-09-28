import 'package:aula_27_09/view/generico/painel_email.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CartaoEmail extends StatelessWidget {
  const CartaoEmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(  
        title: const Text("Email"),
        subtitle: const Text("andre.larrosa@outlook.com"),
        trailing: PainelEmail(
          funcaoEmail: chamarEmail,
        ),
      ),
    );
  }

  chamarEmail() {
    launchUrl(Uri(
        scheme: "mailto",
        path: 'andre.larrosa@outlook.com',
        queryParameters: {
          'subject': 'Default Subject',
          'body': 'Default body'
        }));
  }
}
