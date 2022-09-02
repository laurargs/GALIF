import 'package:GALIF_924/body/cadastro.dart';
import 'package:GALIF_924/body/calendario.dart';
import 'package:GALIF_924/body/gridview_page.dart';
import 'package:GALIF_924/body/login.dart';
import 'package:GALIF_924/body/menu.dart';
import 'package:GALIF_924/body/tela_inserir.dart';


import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _indiceAtual = 0;
  List body = const [
    Login(),
    Menu(),
    TelaDeInserir(),
    //Cadastro(),
    //Calendario(),
    //GridViewPage(),
    //menu(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF25305),


      appBar: AppBar(
        backgroundColor: const Color(0xFFF4DE9C),
        toolbarHeight: 120,
        actions: [
          Icon(Icons.arrow_back_sharp, color: Color(0xFF571F04), size: 45),
        ],
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


      body: body[_indiceAtual],


      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false, //retirar label
        showUnselectedLabels: false, //retirar label ao ser selecionada
        backgroundColor:
            const Color(0xFFF4DE9C), //cor da barra do BottomNavigationBar
        currentIndex: _indiceAtual,
        onTap: onTabTapped, //ação ao clicar no icone
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.add_alert, size: 40), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.warehouse_outlined, size: 40), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.person, size: 40), label: ""),
        ],
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
