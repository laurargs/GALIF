import 'package:GALIF_924/screens/gridview_page.dart';
import 'package:GALIF_924/screens/menu.dart';
import 'package:GALIF_924/screens/notification.dart';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFFF4DE9C),
        toolbarHeight: 120,
        title: const Text(
          "    GALIF",
          style: TextStyle(
            fontSize: 32.0,
            fontWeight: FontWeight.bold,
            color: Color(0xFF571F04),
          ),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(59),
          ),
        ),
      ),
      body: body[_indiceAtual],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false, //Retirar label (Nome que fica escrito na parte de baixo do icon)
        showUnselectedLabels: false, //Retirar label (Nome que fica escrito na parte de baixo do icon) ao ser selecionada
        backgroundColor:
            const Color(0xFFF4DE9C), //Cor da barra do BottomNavigationBar
        currentIndex: _indiceAtual,
        onTap: onTabTapped, //Ação ao clicar no icone
        items: const [ //A palavra-chave const é usada quando o valor da variável é conhecido em tempo de compilação e nunca muda.  O motivo é o aumento de desempenho, pois o Flutter pode economizar alguns cálculos entendendo que pode reutilizar aquele widget de um redesenho anterior no atual, já que é um valor constante.
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
    //Colocar a ação que será feita ao clicar nos botões
    setState(() {
      _indiceAtual = index;
    });
  }
}