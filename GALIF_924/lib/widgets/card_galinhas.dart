import 'package:GALIF_924/domain/variaveis_galinhas.dart';
import 'package:GALIF_924/screens/galinhas_detalhes.dart';
import 'package:flutter/material.dart';

class Card_Galinhas extends StatefulWidget {
  final Individuos individuos;

  const Card_Galinhas({
    Key? key,
    required this.individuos,
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
                individuos: widget.individuos,
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
            buildImage(widget.individuos.imagem),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.individuos.nome,
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
        child: Image.asset(
          imagem,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}