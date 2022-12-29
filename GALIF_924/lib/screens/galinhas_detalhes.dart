import 'package:GALIF_924/domain/variaveis_galinhas.dart';
import 'package:flutter/material.dart';

class galinhas_detalhes extends StatefulWidget {
  final Individuos individuos;
  final String imagem;

  const galinhas_detalhes({
    Key? key,
    required this.individuos,
    required this.imagem,
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
          InkWell(
            child: Image.network(widget.magem),
            onTap: () async {
              List<Location> locations =
                  await locationFromAddress(widget.cep);
              Location location = locations[0];
              LatLng latLong = LatLng(location.latitude, location.longitude);

              // Abrir o Mapa
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return MapPage(latLng: latLong);
                  },
                ),
              );
            },
          ),
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
                        "${widget.individuos.semanas} semanas",
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                    const SizedBox(width: 24),
                    Text(
                      "Peso: ${widget.individuos.peso}Kg",
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
