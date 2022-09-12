import 'package:GALIF_924/domain/variaveis_galinhas.dart';
import 'package:GALIF_924/body/galinhas_detalhes.dart';
import 'package:flutter/material.dart';

class Card_Galinhas extends StatefulWidget {
  final PacoteTuristico pacoteTuristico;

  const Card_Galinhas({
    Key? key,
    required this.pacoteTuristico,
  }) : super(key: key);

  @override
  _Card_GalinhasState createState() => _Card_GalinhasState();
}

class _Card_GalinhasState extends State<Card_Galinhas> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return galinhas_detalhes(
                pacoteTuristico: widget.pacoteTuristico,
              );
            },
          ),
        );
      },
      child: Card(
        color: Color(0xFF713112),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildImage(widget.pacoteTuristico.imagem),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.pacoteTuristico.nome,
                    style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ],
              ),
            ),
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
        color: Colors.amber,
        height: 180,
        width: double.infinity,
        child: Image.network(
          imagem,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}