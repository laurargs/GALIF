import 'package:GALIF_924/data/BD.dart';
import 'package:GALIF_924/domain/variaveis_galinhas.dart';
import 'package:GALIF_924/widgets/card_galinhas.dart';
import 'package:flutter/material.dart';

class GridViewPage extends StatefulWidget {
  const GridViewPage({Key? key}) : super(key: key);

  @override
  State<GridViewPage> createState() => _GridViewPageState();
}

class _GridViewPageState extends State<GridViewPage> {
  List<PacoteTuristico> list = BD.lista;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: buildBody(),
    );
  }

  buildBody() {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.8,
      ),
      shrinkWrap: true,
      itemCount: list.length,
      itemBuilder: (context, index) {
        return CardPacoteTuristico(
          pacoteTuristico: list[index],
        );
      },
    );
  }
}