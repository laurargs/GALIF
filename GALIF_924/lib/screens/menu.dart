import 'package:GALIF_924/data/Bottom.dart';
import 'package:GALIF_924/domain/variaveis_galinhas.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    List<NewPath> lista = Bottom.listabottom; 
    return GridView.builder(
      padding: const EdgeInsets.all(41),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      childAspectRatio: 1.29,
      crossAxisSpacing: 34,  
      mainAxisSpacing: 34,
      ),
      itemCount: lista.length - 1,
      itemBuilder: (BuildContext context, int index) {
        return ElevatedButton(
          
          onPressed: (){
            Navigator.pushNamed(context, lista[index].rota);
          },
            style: ElevatedButton.styleFrom(
              primary: const Color(0xFFF4DE9C),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ), 
          child: Image.asset(lista[index].imagem),
        );
      },
    );
  }

  void onPressedButton() {}
}