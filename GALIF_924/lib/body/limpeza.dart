import 'package:GALIF_924/body/gridview_page.dart';
import 'package:GALIF_924/body/menu.dart';
import 'package:GALIF_924/body/notification.dart';
import 'package:flutter/material.dart';

class Limpeza extends StatefulWidget {
  const Limpeza({Key? key}) : super(key: key);

  @override
  State<Limpeza> createState() => _LimpezaState();
}

class _LimpezaState extends State<Limpeza> {
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
                Text("Limpeza")
              ],
            ),
          ),


      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false, //retirar label
        showUnselectedLabels: false, //retirar label ao ser selecionada
        backgroundColor:
            const Color(0xFFF4DE9C), //cor da barra do BottomNavigationBar
        currentIndex: _indiceAtual,
        onTap: onTabTapped, //ação ao clicar no icone
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.add_alert, size: 40, color: Color.fromARGB(255, 104, 78, 65)), label: "", activeIcon: Icon(Icons.add_alert, color: Color(0xFF571F04), size: 40),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.warehouse_outlined, size: 40, color: Color.fromARGB(255, 104, 78, 65)), label: "", activeIcon: Icon(Icons.warehouse_outlined, color: Color(0xFF571F04), size: 40),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person, size: 40, color: Color.fromARGB(255, 104, 78, 65)), label: "", activeIcon: Icon(Icons.person, color: Color(0xFF571F04), size: 40),
          ),
  
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