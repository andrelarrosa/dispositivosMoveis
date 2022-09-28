import 'package:aula_27_09/view/generico/avatar.dart';
import 'package:flutter/material.dart';

class MeuAvatar extends StatelessWidget {
  final String url = "https://img.icons8.com/material/344/avengers.png";
  const MeuAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Avatar(url: url);
  }
}
