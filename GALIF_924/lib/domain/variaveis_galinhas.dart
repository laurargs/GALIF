import 'package:flutter/cupertino.dart';

class Individuos {
  final String imagem;
  final String nome;
  final String peso;
  final String semanas;
  final String especie;

  Individuos({
    required this.imagem,
    required this.nome,
    required this.peso,
    required this.semanas,
    required this.especie,
  });
}

class NewPath {
  final String imagem;
  final String rota;

  NewPath({
    required this.imagem,
    this.rota = '',
  });
}