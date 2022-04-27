void main() {
  verificarAprovacao(6, 8, 7);
  verificarAprovacao(6, 8);
  verificarAprovacaoParametrosNomeados(nota2: 10, nota1: 10, mediaAprovacao: 6);
}

String verificarAprovacao(double nota1, double nota2,
    [double mediaAprovacao = 6]) {
  var media = (nota1 + nota2) / 2;
  if (media >= mediaAprovacao) {
    return "aprovado";
  } else {
    return "reprovado";
  }
}

String verificarAprovacaoParametrosNomeados(
    {required double nota1, required double nota2, double mediaAprovacao = 6}) {
  var media = (nota1 + nota2) / 2;
  if (media >= mediaAprovacao) {
    return "aprovado";
  } else {
    return "reprovado";
  }
}

String verificarAprovacaoParametrosMisturado(double nota1,
    {required double nota2, double mediaAprovacao = 6}) {
  var media = (nota1 + nota2) / 2;
  if (media >= mediaAprovacao) {
    return "aprovado";
  } else {
    return "reprovado";
  }
}
