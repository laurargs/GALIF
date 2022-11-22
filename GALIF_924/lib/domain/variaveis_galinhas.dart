class Individuos {
  late String nome;
  late String peso;
  late String semanas;
  late String especie;

  Individuos({
    required this.nome,
    required this.peso,
    required this.semanas,
    required this.especie,
  });

  Individuos.fromJson(Map<String, dynamic> json) {
    nome = json['nome'];
    peso = json['peso'];
    semanas = json['semanas'];
    especie = json['especie'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['nome'] = nome;
    data['peso'] = peso;
    data['semanas'] = semanas;
    data['especie'] = especie;
    return data;
  }
}
