class Unidade {
  final int idUnidade;
  final String nome;
  final String rua;
  final String bairro;
  final String cidade;
  final int numero;
  final String cep;
  final String uf;
  final String telefone;
  final String hrFuncionamento;

  Unidade({
    this.idUnidade,
    this.nome,
    this.rua,
    this.bairro,
    this.cidade,
    this.numero,
    this.cep,
    this.uf,
    this.telefone,
    this.hrFuncionamento,
  });

  factory Unidade.fromJson(Map<String, dynamic> json) {
    if (json != null) {
      return Unidade(
          idUnidade: json['id_unidade'],
          nome: json['nome'],
          rua: json['rua'],
          bairro: json['bairro'],
          cidade: json['cidade'],
          numero: json['numero_endereco'],
          cep: json['cep'],
          uf: json['uf'],
          telefone: json['telefone'],
          hrFuncionamento: json['hr_funcionamento']);
    } else {
      return Unidade(
        idUnidade: 0,
        nome: '',
        rua: '',
        bairro: '',
        cidade: '',
        numero: 0,
        uf: '',
        telefone: '',
        hrFuncionamento: '',
      );
    }
  }
}
