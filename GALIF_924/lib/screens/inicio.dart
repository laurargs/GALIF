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
    pushLogin();
    return Container(
      color: const Color(0xFFF25305),
      child: Center(child: Image.asset(lista[6].imagem, width: 200)),
    );
  }

  void pushLogin() {
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.pushReplacementNamed(context, "Login");
    });
  }
}