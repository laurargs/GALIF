import 'package:924-GALIF/data/BD.dart';
import 'package:924-GALIF/domain/pacote_turistico.dart';
import 'package:924-GALIF/widgets/card_pacote_turistico.dart';
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
        childAspectRatio: 0.4,
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
