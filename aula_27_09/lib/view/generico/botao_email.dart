import 'package:flutter/material.dart';

class BotaoEmail extends StatelessWidget {
  final VoidCallback function;
  const BotaoEmail({Key? key, required this.function}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.email),
      color: Colors.red,
      onPressed: function,
    );
  }
}
