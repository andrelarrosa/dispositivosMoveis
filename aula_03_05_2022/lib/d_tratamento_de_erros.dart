
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

Quais são os tratamentos de erros existentes no dart?
R:
  
Quais são as principais excessões existentes no dart?
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

Explique e exemplifique o uso das cláusulas on e finally no bloco try-cath.

Implemente o try-catch (com relevância) em nas funções do seu projeto.
É possível criar exceções específicas? Se sim, em que caso podem ser utilizas?
analise o seu projeto e crie exceções específicas que facilite a localizção e a manutenção do projeto.
*/
