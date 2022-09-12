import 'package:GALIF_924/data/Bottom.dart';
import 'package:GALIF_924/domain/variaveis_galinhas.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  List<NewPath> listNewPath = Bottom.listabottom;

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(30.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.175,
        crossAxisSpacing: 0.9,
      ),
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, "Calendario");
            },
            child: Image.asset(listNewPath[0].imagem),
            style: ElevatedButton.styleFrom(
              primary: const Color(0xFFF4DE9C),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
              fixedSize: Size.fromRadius(56),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, "Inserir");
            },
            child: Image.asset(listNewPath[1].imagem),
            style: ElevatedButton.styleFrom(
              primary: const Color(0xFFF4DE9C),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              fixedSize: Size.fromRadius(56),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, "Gráfico");
            },
            child: Image.asset(listNewPath[2].imagem),
            style: ElevatedButton.styleFrom(
              primary: const Color(0xFFF4DE9C),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              fixedSize: Size.fromRadius(56),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, "Alimentacao");
            },
            child: Image.asset(listNewPath[3].imagem),
            style: ElevatedButton.styleFrom(
              primary: const Color(0xFFF4DE9C),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              fixedSize: Size.fromRadius(56),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, "Limpeza");
            },
            child: Image.asset(listNewPath[4].imagem),
            style: ElevatedButton.styleFrom(
              primary: const Color(0xFFF4DE9C),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              fixedSize: Size.fromRadius(56),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, "Coleta");
            },
            child: Image.asset(listNewPath[5].imagem),
            style: ElevatedButton.styleFrom(
              primary: const Color(0xFFF4DE9C),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              fixedSize: Size.fromRadius(56),
            ),
          ),
        ),
      ],
    );
  }

  void onPressedButton() {}
}