class PacoteTuristico {
  late final String imagem;
  late final String nome;
  late final String titulo;
  late final int numDiarias;
  late final int numPessoas;
  late final int numParcelas;
  late final String transporte;
  late final String validade;
  late final String cidade;
  late final double desconto;
  late final double precoAtual;
  late final double precoAntigo;

  PacoteTuristico({
    required this.validade,
    required this.cidade,
    required this.imagem,
    this.nome = '',
    required this.titulo,
    required this.numDiarias,
    required this.numPessoas,
    required this.numParcelas,
    required this.transporte,
    required this.desconto,
    required this.precoAtual,
    required this.precoAntigo,
  });

  PacoteTuristico.fromJson(Map<String, dynamic> json) {
    nome = json['head'];
    imagem = json['url_image'];
    cidade = json['city'];
    titulo = json['title'];
    transporte = json['transport'];
    validade = json['validity'];
    precoAntigo = json['old_price'];
    precoAtual = json['current_price'];
    numDiarias = json['nights'];
    desconto = json['discount'];
    numPessoas = json['persons'];
    numParcelas = 12;
  }

  Map<String, Object?> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['head'] = titulo;
    data['title'] = nome;
    data['url_image'] = imagem;
    data['city'] = cidade;
    data['transport'] = transporte;
    data['validity'] = validade;
    data['old_price'] = precoAntigo;
    data['current_price'] = precoAtual;
    data['nights'] = numDiarias;
    data['discount'] = desconto;
    data['persons'] = numPessoas;
    data['free_cancellation'] = true;

    return data;
  }
}