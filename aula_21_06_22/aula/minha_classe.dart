main() {
  MinhaClasse minhaClasse = new MinhaClasse("");
  minhaClasse.meuAtributo = "SOCORRO";
  print(minhaClasse.meuAtributo);
  print(minhaClasse.atributoNaoNulo);
}

class MinhaClasse {
  String? meuAtributo;
  String atributoNaoNulo = "TOMAR NO CU SAPOHACL";

  MinhaClasse(this.meuAtributo) {}
  // MinhaClasse(String meuAtributo) {
  //   this.meuAtributo = meuAtributo;
  // }
}
