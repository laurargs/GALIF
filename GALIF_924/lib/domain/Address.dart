class Address {
  late String cep;
  late String logradouro;
  late String complemento;
  late String bairro;
  late String localidade;
  late String uf;
  late String ddd;

  Address({
    this.cep = '',
    this.logradouro = '',
    this.complemento = '',
    this.localidade = '',
    this.bairro = '',
    this.uf = '',
    this.ddd = '',
  });

  Address.fromJson(Map<String, dynamic> json) {
    cep = json['cep'];
    logradouro = json['logradouro'];
    complemento = json['complemento'];
    bairro = json['bairro'];
    localidade = json['localidade'];
    uf = json['uf'];
    ddd = json['ddd'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['uf'] = this.uf;
    data['cep'] = this.cep;
    data['ddd'] = this.ddd;
    data['bairro'] = this.bairro;
    data['logradouro'] = this.logradouro;
    data['localidade'] = this.localidade;
    data['complemento'] = this.complemento;

    return data;
  }
}