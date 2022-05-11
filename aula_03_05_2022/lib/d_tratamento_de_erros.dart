
/*
O que é e para que serve tratamento de erros?
R: Caso dê um erro, temos que saber como vamos lidar com esse erro, para isso, utilizamos o tratamento de erro para informar ao usuário e para sabermos o processo que ocorreu o erro
Quais são as formas de tratamentos de erros?
R: Throws e try/catch
Qual a difereça entre erro e exceção? 
R: Erros são problemas muito grandes que não devem ser tratados ou lançados. Exceptions podem ser tratadas e lançadas
Qual a diferença entre excessão implícita (contornável) e explícita (incontornável)? 

O que são: 
(1) throwables: interface base para qualquer objeto lançável usando a declaração throw incluindo as classes Error e Exception; 
(2) Checked Exception: exceções Checked são aquelas no qual você é obrigado a tratá-la, seja com um bloco try-catch ou mesmo com um throws; e 
(3) Unchecked (Runtime): não é obrigatório o tratamento da mesma, você pode tratar apenas se quiser, se sentir que é necessário para o bom funcionamento da sua aplicação

Quais são as principais exceções existentes no dart?
R:
  DefferedLoadException:  Ele é lançado quando uma biblioteca adiada falha ao carregar.
  FromatException:  É a exceção que é lançada quando uma string ou algum outro dado não tem um formato esperado
  IntegerDivisionByZeroException: É lançado quando o número é dividido por zero.
  IOEException:	É a classe base das exceções relacionadas a entradas e saídas.
  IsolateSpawnException:  Ele é lançado quando um isolado não pode ser criado.
  Tempo esgotado: É acionado quando ocorre um tempo limite programado durante a espera por um resultado assíncrono. 

O que é para que serve o bloco try-catch? O que é e como utilizamos o objeto de exceção? O que é e como utilizamos o objeto Stack trace?
R:Try-catch é usado para que em um dado momento em que um código possa gerar um erro inesperado, o programador consiga manipular as possibilidades e exceções.
Quando o sistema captura alguma exceção o fluxo do código fica interrompido.
Stack trace é um relatório dos stacks frames ativos em um determinado ponto no tempo durante a execução de um programa. Normalmente é utilizado durante a depuração do código.

O que é e como funciona o rethrow? Em que caso devemos utilizar? Exemplifique.
R: rethrow preserva o rastreamento de pilha original da exceção.
No try/catch, o que é captura de erros? Como é realizada - sintaxe? Quais são os tipos de capturas possíveis? Quais são as diferenças? 
R: Quando ocorre uma exceção dentro de um bloco try/catch, é sinalizada e propagada essa exceção através de toda a pilha até que a exceção seja encontrada por um bloco
manipulador de exceção.
try{
    //  código que inclui comandos/invocações de métodos
    //  que podem gerar uma situação de exceção.
}catch(e){
  bloco de tratamento associado à condição de exceção XException ou a qualquer uma de suas subclasses, identificada aqui pelo objeto com referência x
}
DefferedLoadException	Ele é lançado quando uma biblioteca adiada falha ao carregar.
FromatException	 É a exceção que é lançada quando uma string ou algum outro dado não tem um formato esperado
IntegerDivisionByZeroException	É lançado quando o número é dividido por zero.
IOEException	É a classe base das exceções relacionadas a entradas e saídas.
IsolateSpawnException	Ele é lançado quando um isolado não pode ser criado.
Tempo esgotado	É acionado quando ocorre um tempo limite programado durante a espera por um resultado assíncrono.

Explique e exemplifique o uso das cláusulas on e finally no bloco try-cath. 
R: On é usado quando há 100% de certeza de que tipo de exceção será lançada. Finally é normalmente usado para liberar recursos que 
foram alocados na execução do programa e que, após a execução do try, não precisam mais ser utilizados, também podemos utilizar para executar comandos
que sempre serão executados após o try/catch mesmo se não for lançada nenhuma execeção

É possível criar exceções específicas? Se sim, em que caso podem ser utilizas? Quais são os cuidados que devemos ter. Exemplifique.
R: Sim, podem ser utilizadas para emitirmos uma mensagem de erro para o usuário que não necessariamente seria um erro do sistema, mas um erro na regra de negócio.
Devemos tomar cuidado para especificá-las bem e não termos problemas no futuro com uma exception com uma mensagem que não diz o que está errado, por exemplo: 
"Baixa de liberação errada"

Implemente o try-catch (com relevância) nas funções do seu projeto – pelo menos 5 funções. Faça o tratamento de erro específico e geral. 

Analise o seu projeto e crie exceções específicas que facilite a localização e a manutenção do projeto.

O que é e para que serve o Either? Qual a relação e qual a diferença com o try-cath? Faça um exemplo no contexto do seu projeto.
R: A biblioteca para tratamento de erros.
*/
