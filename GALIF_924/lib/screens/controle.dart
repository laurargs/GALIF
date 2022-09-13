import 'package:GALIF_924/screens/gridview_page.dart';
import 'package:GALIF_924/screens/menu.dart';
import 'package:GALIF_924/screens/notification.dart';
import 'package:flutter/material.dart';

class Controle extends StatefulWidget {
  const Controle({Key? key}) : super(key: key);

  @override
  State<Controle> createState() => _ControleState();
}

class _ControleState extends State<Controle> {
  int _indiceAtual = 1;
  List body = const [
    Notificacao(),
    Menu(),
    GridViewPage(),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF25305),
      appBar: AppBar(
        leading: BackButton(color: Color(0xFF571F04)),
        backgroundColor: const Color(0xFFF4DE9C),
        toolbarHeight: 120,
        title: Text(
          "    GALIF",
          style: TextStyle(
            fontSize: 32.0,
            fontWeight: FontWeight.bold,
            color: Color(0xFF571F04),
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(59),
          ),
        ),
      ),


      body:
        Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Controle")
              ],
            ),
          ),


    );
  }

  void onTabTapped(int index) {
    //colocar a ação que será feita ao clicar nos botões
    setState(() {
      _indiceAtual = index;
    });
  }   
  }