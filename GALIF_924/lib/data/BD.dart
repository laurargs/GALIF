import 'package:GALIF_924/domain/variaveis_galinhas.dart';
import 'package:flutter/cupertino.dart';

class BD {
  static List<Individuos> lista = [
    Individuos(
      imagem: 'assets/image/Galinha1.jpg',
      nome: 'Cócó',
      peso: '5kg',
      semanas: '10 semanas',
      especie: 'Galinha caipira',
    ),
    Individuos(
      imagem: 'assets/image/Galinha2.jpg',
      nome: 'Teresa',
      peso: '2kg',
      semanas: '15 semanas',
      especie: 'Galinha caipira',
    ),
    Individuos(
      imagem:'assets/image/Galinha3.jpg',
      nome: 'Maria',
      peso: '4kg',
      semanas: '12 semanas',
      especie: 'Galinha do pé molhado',
    ),
    Individuos(
      imagem: 'assets/image/Galinha4.jpeg',
      nome: 'Josefina',
      peso: '7kg',
      semanas: '20 semanas',
      especie: 'Galinha do pé seco',
    ),
    Individuos(
      imagem: 'assets/image/Galinha5.png',
      nome: 'Zeze',
      peso: '6kg',
      semanas: '14 semanas',
      especie: 'Galinha do pé grande',
    ),
  ];
}