// import 'package:dart_application_1/dart_application_1.dart';
import 'package:dart_application_1/primeiro.dart' as primeiro;
import 'package:dart_application_1/solicitar_dados.dart' as SolicitarDados;
// import 'package:test/test.dart';

void main() {
  SolicitarDados.solicitarDadosAluno();
  SolicitarDados.solicitarDadosDisciplina();
  String aprovacaoFaltas = SolicitarDados.verificarAprovacaoPorFaltas(75);
  print(aprovacaoFaltas);
  String media = SolicitarDados.verificarNotaAcimaDaMedia();
  print(media);
  SolicitarDados.calcularMediaMenorMaior();
  SolicitarDados.verificarAprovacao(21);
  SolicitarDados.verificarAprovacaoZeroADez();
  SolicitarDados.solicitarDadosTresAlunos();
  SolicitarDados.solicitarDadosVariosAlunos();
  SolicitarDados.solicitarDadosDuasDisciplinas();
  SolicitarDados.solicitarDisciplinas();
  SolicitarDados.verificarAprovacaoAlunos();
}
