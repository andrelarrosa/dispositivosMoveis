import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String url;
  const Avatar({Key? key, required this.url}) : super(key: key);

  Widget criarAvatar(BuildContext context, double largura) {
    return CircleAvatar(
      backgroundImage: NetworkImage(url),
      radius: largura / 16,
    );
  }

  Widget CriarAvatarGenerico(BuildContext context, double largura) {
    return CircleAvatar(
      child: Icon(
        Icons.person,
        size: largura / 2,
      ),
      radius: largura / 5,
    );
  }

  @override
  Widget build(BuildContext context) {
    var largura = MediaQuery.of(context).size.width;
    return Uri.tryParse(url)!.isAbsolute
        ? criarAvatar(context, largura)
        : CriarAvatarGenerico(context, largura);
  }
}
