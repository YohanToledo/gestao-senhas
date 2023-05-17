import 'dart:html';

class CartaoEntity {
  late int? cartaoID;
  final String? descricao;
  final String numero;
  final String validade;
  final int cvv;
  final String senha;

  CartaoEntity({
    this.descricao,
    required this.numero,
    required this.validade,
    required this.cvv,
    required this.senha,
  });
}
