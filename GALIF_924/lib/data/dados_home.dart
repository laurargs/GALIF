import 'package:GALIF_924/domain/pacote_turistico.dart';
import 'package:flutter/cupertino.dart';

class BD {
  static List<PacoteTuristico> lista = [
    PacoteTuristico(
      imagem: 'assets/image/bottom_calendario.png',
      onPressed: "Calendario",
    ),
    PacoteTuristico(
      imagem: 'assets/image/bottom_add.png',
      onPressed: "Cadastro",
    ),
    PacoteTuristico(
      imagem: 'assets/image/bottom_grafico.png',
      onPressed: "Cadastro",
    ),
    PacoteTuristico(
      imagem: 'assets/image/bottom_alimentacao.png',
      onPressed: "Cadastro",
    ),
    PacoteTuristico(
      imagem: 'assets/image/bottom_limpeza.png',
      onPressed: "Cadastro",
    ),
    PacoteTuristico(
      imagem: 'assets/image/bottom_coletar.png',
      onPressed: "Cadastro",
    ),
  ];
}
