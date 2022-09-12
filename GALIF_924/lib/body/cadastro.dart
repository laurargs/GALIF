import 'package:GALIF_924/body/gridview_page.dart';
import 'package:GALIF_924/body/menu.dart';
import 'package:GALIF_924/body/notification.dart';
import 'package:flutter/material.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({Key? key}) : super(key: key);

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
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
      body:
        Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'NOME DE USUÁRIO:',
                    labelStyle: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFF4DE9C),
                    ),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                      color: Color(0xFFF4DE9C),
                      width: 2,
                    )),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.1,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'E-MAIL:',
                    hintText: 'Ex: email@email.com',
                    labelStyle: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFF4DE9C),
                    ),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                      color: Color(0xFFF4DE9C),
                      width: 2,
                    )),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.1,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'SENHA:',
                      labelStyle: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFF4DE9C),
                      ),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                        color: Color(0xFFF4DE9C),
                        width: 2,
                      ))),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (value) {},
                  obscureText: true,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.1,
                ),
                const SizedBox(height: 3),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'CONFIRMAR SENHA:',
                    labelStyle: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFF4DE9C),
                    ),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                      color: Color(0xFFF4DE9C),
                      width: 2,
                    )),
                  ),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (value) {},
                  obscureText: true,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.1,
                ),
                ElevatedButton(
                 onPressed: () {
                  Navigator.pushNamed(context, "Inicio");
                },
                  child: const Text(
                    'CADASTRAR',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF571F04),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFFF4DE9C),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
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

  void onPressedButton() {
  }
}