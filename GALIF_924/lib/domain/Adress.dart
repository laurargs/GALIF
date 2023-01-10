class Address {
  late String cep;
  late String logradouro;
  late String bairro;
  late String localidade;

  Address({
    this.cep = '',
    this.logradouro = '',
    this.localidade = '',
    this.bairro = '',
  });

  Address.fromJson(Map<String, dynamic> json) {
    cep = json['cep'];
    logradouro = json['logradouro'];
    bairro = json['bairro'];
    localidade = json['localidade'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['cep'] = this.cep;
    data['bairro'] = this.bairro;
    data['logradouro'] = this.logradouro;
    data['localidade'] = this.localidade;

    return data;
  }
}