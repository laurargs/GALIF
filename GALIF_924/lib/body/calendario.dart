import 'package:GALIF_924/body/gridview_page.dart';
import 'package:GALIF_924/body/menu.dart';
import 'package:GALIF_924/body/notification.dart';
import 'package:flutter/material.dart';

class Calendario extends StatefulWidget {
  const Calendario({Key? key}) : super(key: key);

  @override
  State<Calendario> createState() => _CalendarioState();
}

class _CalendarioState extends State<Calendario> {
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
        // actions: [
        //   Icon(Icons.arrow_back_sharp, color: Color(0xFF571F04), size: 45),
        // ],
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
      body: Center(child: Form(  
        child: Column(
          children: <Widget>[
            SizedBox(height: 20),
            Text(
              "CALENDÁRIO",
              style: TextStyle(
                fontSize: 26.0,
                fontWeight: FontWeight.bold,
                color: Color(0xFF571F04),
              ),
            ),
            SizedBox(height: 10),
            Image.network(
              'https://i.ibb.co/9qh2ZBg/Design-sem-nome.png',
              width: 335,
              height: 335,
            ),
            SizedBox(height: 10),
            Container(
              width: 130,
              child: ElevatedButton(
                onPressed: onPressedButton,
                child: Row(
                  children: [
                    Text(
                      'Junho',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF571F04),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.arrow_drop_down_outlined,
                          color: Color(0xFF571F04)),
                    ),
                  ],
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFFF4DE9C),
                  shape: RoundedRectangleBorder(),
                ),
              ),
            ),
          ],
        ),
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

  void onPressedButton() {
  }
}