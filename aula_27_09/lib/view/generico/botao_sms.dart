import 'package:flutter/material.dart';

class BotaoSms extends StatelessWidget {
  final VoidCallback function;
  const BotaoSms({Key? key, required this.function}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.sms),
      color: Colors.red,
      onPressed: function,
    );
  }
}
