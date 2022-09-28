import 'package:flutter/material.dart';

class BotaoTelefone extends StatelessWidget {
  final VoidCallback function;
  const BotaoTelefone({Key? key, required this.function}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.phone),
      color: Colors.red,
      onPressed: function,
    );
  }
}
