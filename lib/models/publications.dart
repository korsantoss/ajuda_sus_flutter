class PublicationModel {
  final int idPublicacao;
  final String titulo;
  final String data;
  final String conteudo;
  final int id;

  PublicationModel({
    this.idPublicacao,
    this.titulo,
    this.data,
    this.conteudo,
    this.id,
  });

  factory PublicationModel.fromJson(Map<String, dynamic> json) {
    if (json != null) {
      return PublicationModel(
        idPublicacao: json['id_publicacao'],
        titulo: json['titulo'],
        data: json['data'],
        conteudo: json['conteudo'],
        id: json['id_unidade'],
      );
    } else {
      return PublicationModel(
        idPublicacao: 0,
        titulo: '',
        data: '',
        conteudo: '',
        id: 0,
      );
    }
  }
}
