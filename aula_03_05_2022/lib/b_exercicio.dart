import 'package:aula_03_05_2022/ver_aprovacao/verificar_aprovacao.dart'
    as aprovacao;

String show() {
  var nota1 = 7.0;
  var nota2 = 9.0;
  var media = 8.0;
  var quantidadePresenca = 30;
  var cargaHorariaDisciplina = 100;
  var percentualMinimoPresenca = 70.0;
  return aprovacao.verificarAprovacao(nota1, nota2, media, quantidadePresenca,
      cargaHorariaDisciplina, percentualMinimoPresenca);
}

/*
Esta função tem o objetivo de verificar a aprovação pela nota e presença 
Considerando este cenário, quais são os possíveis contextos de teste? 
Para cada cenário, os resultados gerados estão coerentes? 
Faça a depuração e indique até onde a nota está correta.
Faça a depuração e indique até onde a presença está correta.
Faça as alterações necessárias.
*/

