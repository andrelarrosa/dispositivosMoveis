class Aluno {
  int RA;
  String nome;
  String sobrenome;
  late String _CPF;
  String? email;
  late int _anoNascimento;

  int get anoNascimento {
    return this._anoNascimento;
  }

  set anoNascimento(int anoNascimento) {
    if (anoNascimento > 0) {
      this._anoNascimento = anoNascimento;
    }
  }

  String get CPF {
    return this._CPF;
  }

  set CPF(String CPF) {
    if (CPF.length == 11 && int.parse(CPF) != null) {
      this._CPF = CPF;
    }
  }

  int getIdade() {
    var anoAtual = DateTime.now().year;
    return anoAtual - anoNascimento;
  }

  String getNomeCompleto() {
    return nome + ' ' + sobrenome;
  }

  String? telefone;

  Aluno(
      {required this.RA,
      required this.nome,
      required this.sobrenome,
      this.email});
}
