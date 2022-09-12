import 'package:GALIF_924/body/login.dart';
import 'package:GALIF_924/body/cadastro.dart';
import 'package:GALIF_924/data/Bottom.dart';
import 'package:GALIF_924/domain/variaveis_galinhas.dart';
import 'package:flutter/material.dart';

class Inicio extends StatefulWidget {
  const Inicio({Key? key}) : super(key: key);

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  List<NewPath> lista = Bottom.listabottom;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(lista[6].imagem, width: 200),
          ElevatedButton(
            onPressed: (){
            Navigator.pushNamed(context, "Login");
            },
            child: Text('Login', style: TextStyle(color: Colors.black, fontSize: 25)),
            style: ElevatedButton.styleFrom(
              primary: const Color(0xFFF4DE9C),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              fixedSize: Size.fromRadius(70),
            ),
          ),
          ElevatedButton(
            onPressed: (){
            Navigator.pushNamed(context, "Cadastro");
            },
            child: Text('Cadastro', style: TextStyle(color: Colors.black, fontSize: 25),),
            style: ElevatedButton.styleFrom(
              primary: const Color(0xFFF4DE9C),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              fixedSize: Size.fromRadius(70),
            ),
          ),
        ],
      ),
    );
  }
  void onPressedButton() {}
}