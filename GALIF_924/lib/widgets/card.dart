import 'package:GALIF_924/domain/pacote_turistico.dart';
import 'package:GALIF_924/body/pacote_detalhes.dart';
import 'package:flutter/material.dart';

class CardPacoteTuristico extends StatefulWidget {
  final PacoteTuristico pacoteTuristico;

  const CardPacoteTuristico({
    Key? key,
    required this.pacoteTuristico,
  }) : super(key: key);

  @override
  _CardPacoteTuristicoState createState() => _CardPacoteTuristicoState();
}

class _CardPacoteTuristicoState extends State<CardPacoteTuristico> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, widget.pacoteTuristico.onPressed);
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildImage(widget.pacoteTuristico.imagem),
          ],
        ),
      ),
    );
  }

  buildImage(String imagem) {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(
        top: Radius.circular(8),
      ),
      child: Container(
        //color: Colors.amber,
        height: 140,
        width: 200,
        //width: double.infinity,
        child: Image.asset(
          imagem,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
