import 'package:aula_27_09/view/cartao_info.dart';
import 'package:aula_27_09/view/especifico/meu_avatar.dart';
import 'package:flutter/material.dart';

class CartaoAdaptativo extends StatelessWidget {
  const CartaoAdaptativo({Key? key}) : super(key: key);

  Widget retrato() {
    return Column(
      children: [MeuAvatar(), CartaoInfo()],
    );
  }

  Widget paisagem() {
    return Row(children: [
      MeuAvatar(),
      CartaoInfo(),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        return Scaffold(
          body: (orientation == Orientation.portrait) ? retrato() : paisagem(),
        );
      },
    );
  }
}
