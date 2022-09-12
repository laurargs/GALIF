import 'package:GALIF_924/domain/variaveis_galinhas.dart';
import 'package:flutter/material.dart';

class galinhas_detalhes extends StatefulWidget {
  final PacoteTuristico pacoteTuristico;

  const galinhas_detalhes({
    Key? key,
    required this.pacoteTuristico,
  }) : super(key: key);

  @override
  _galinhas_detalhesState createState() => _galinhas_detalhesState();
}

class _galinhas_detalhesState extends State<galinhas_detalhes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(widget.pacoteTuristico.imagem),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 11),
                Text(
                  widget.pacoteTuristico.nome,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 11),
                Text(
                  widget.pacoteTuristico.especie,
                  style: const TextStyle(
                    fontSize: 17,
                  ),
                ),
                const SizedBox(height: 11),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        widget.pacoteTuristico.semanas,
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                    const SizedBox(width: 24),
                    Text(
                      "Peso: ${widget.pacoteTuristico.peso}",
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}