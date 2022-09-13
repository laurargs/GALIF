import 'package:GALIF_924/domain/variaveis_galinhas.dart';
import 'package:flutter/material.dart';

class galinhas_detalhes extends StatefulWidget {
  final Individuos individuos;

  const galinhas_detalhes({
    Key? key,
    required this.individuos,
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
          Image.network(widget.individuos.imagem),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 11),
                Text(
                  widget.individuos.nome,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 11),
                Text(
                  widget.individuos.especie,
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
                        widget.individuos.semanas,
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                    const SizedBox(width: 24),
                    Text(
                      "Peso: ${widget.individuos.peso}",
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