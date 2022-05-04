/*
>>> Contexto de Debug/Debugging/Depuração <<<
Processo de encontrar erros (geralmente erros de lógica - runtime error)
Recurso presente em qualquer IDE
- Permite inspecionar o código do projeto, linha a linha, durante a execução
- Pode-se definir o(s) ponto(s) de parada - Break Ponts 
  (para ser o estado atual da execução ou ver o conteúdo de uma variável)

F5 depuração
F10 analisa a linha sem entrar no código interno
F11 analisa a linha e entra no código
CTR+shift+F5 reinicia a depuração
shift+F11 sai do bloco atual e continua a execução

Inspecionar o estado de uma variável
 - Quando está no break point olhar o monitor do debug ou passar o mouse em cima de uma variável
 - Janela de Inspeção - adicionando uma expressão 

*/

String show(){
  var escolha = 1;
  var n1 = 7.0;
  var n2 = 8.0;
  var media = 6.0;
  return interfaceAprovacao(escolha, n1, n2, media) ? 'aprovado' : 'reprovado';
}

bool interfaceAprovacao(int escolha, double nota1, double nota2, double media){
  double nota;
  if(escolha == 1){
    nota = calcularMedia(nota1, nota2);
    
  } else if(escolha == 2){
    nota = calcularMedia(nota1, nota2);
  } else {
    nota = calcularMenorNota(nota1, nota2);
  }
    return  verificarAprovacao(nota, media);
}

bool verificarAprovacao(double nota, double media){
  return (nota >= media);
}

double calcularMedia(double nota1, double nota2){
  return (nota1 + nota2) / 2;
}

double calcularMaiorNota(double nota1, double nota2){
  double maior = nota1;
  if(nota2 > nota1){
    maior = nota2;
  } 
  return maior;
}

double calcularMenorNota(double nota1, double nota2){
  double menor = nota1;
  if(nota2 < nota1){
    menor = nota2;
  } 
  return menor;
}