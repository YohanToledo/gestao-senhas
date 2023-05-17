import 'dart:html';

class PerfilEntity {
  late int? perfilID;
  late String? nome;
  late String? email;
  late String? senha;
  late Blob? foto;

  PerfilEntity({this.nome, this.email, this.senha, this.foto});
}
