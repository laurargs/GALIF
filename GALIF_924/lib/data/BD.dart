import 'package:GALIF_924/domain/pacote_turistico.dart';
import 'package:flutter/cupertino.dart';

class BD {
  static List<PacoteTuristico> lista = [
    PacoteTuristico(
      imagem: 'https://i.ibb.co/rvsdQff/Galinha1.jpg',
      nome: 'Cócó',
      peso: '5kg',
      semanas: '10 semanas',
      especie: 'Galinha do pé seco',
    ),
    PacoteTuristico(
      imagem: 'https://i.ibb.co/FsY1gBx/Galinha2.jpg',
      nome: 'Teresa',
      peso: '2kg',
      semanas: '15 semanas',
      especie: 'Galinha do pé cheio',
    ),
    PacoteTuristico(
      imagem: 'https://i.ibb.co/FsY1gBx/Galinha2.jpg',
      nome: 'Maria',
      peso: '4kg',
      semanas: '12 semanas',
      especie: 'Galinha do pé molhado',
    ),
  ];
}
