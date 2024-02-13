class Postagem {
  String titulo;
  String? descricao;
  String endereco;
  DateTime dataDaPostagem;
  bool situacaoDeCompra = false;

  Postagem({
    required this.titulo,
    required this.descricao,
    required this.endereco,
    required this.dataDaPostagem,
    required this.situacaoDeCompra,
  });
}
