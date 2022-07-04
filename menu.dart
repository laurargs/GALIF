import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
void main() => runApp(MyApp());
int _selectedIndex = 0;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _formKey = GlobalKey<FormState>();
  var isLoading = false;

  int _indiceAtual = 1;
  final List<Widget> _telas = [
    //NewPageScreen("Meus pedidos"),
    //NewPageScreen("teste 2"),
    //NewPageScreen("Favoritos")
  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color(0xFFF25305),
      appBar: AppBar(backgroundColor: const Color(0xFFF4DE9C),
          toolbarHeight: 120,
          title:const Text(
            " GALIF",
            style: TextStyle(
              fontSize: 32.0,fontWeight: FontWeight.bold,
              color: Color(0xFF571F04),),
          ),

          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(59),
            ),
          ),
          actions:[
            GestureDetector(
              child: Image.network(
                'https://i.ibb.co/F54k92R/sair.png',
                width: 60,
                height: 60,
              ),
              onTap: (){
                SystemNavigator.pop();
              },
            ),
          ]
      ),
      //body

      body: Padding(
        padding: const EdgeInsets.all(10.0),

        child: Column(

          children: [
            const SizedBox(height: 34,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[

                ElevatedButton(
                  onPressed: onPressedButton,
                  child: new Image.network(
                    'https://i.ibb.co/sQVBpZy/calendar.png', width: 130, height: 130,),


                  style: ElevatedButton.styleFrom(

                    primary: const Color(0xFFF4DE9C),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    fixedSize: Size.fromRadius(56),

                  ),

                ),

                ElevatedButton(
                  onPressed: onPressedButton,
                  child: new Image.network(
                    'https://i.ibb.co/F37pxBr/add.png',  width: 100, height: 130,
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFFF4DE9C),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    fixedSize: Size.fromRadius(56),

                  ),
                ),
              ],
            ),
            const SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: <Widget>[
                ElevatedButton(
                  onPressed: onPressedButton,
                  child: new Image.network(
                    'https://i.ibb.co/BNGsjvn/grafico.png',  width: 100, height: 130,
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFFF4DE9C),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    fixedSize: Size.fromRadius(56),
                  ),
                ),
                ElevatedButton(
                  onPressed: onPressedButton,
                  child: new Image.network(
                    'https://i.ibb.co/CJyBmJY/alimentacao.png',  width: 100, height: 130,
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFFF4DE9C),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    fixedSize: Size.fromRadius(56),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  onPressed: onPressedButton,
                  child: new Image.network(
                    'https://i.ibb.co/Ms01Yt8/limpar.png',  width: 100, height: 130,
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFFF4DE9C),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    fixedSize: Size.fromRadius(56),
                  ),
                ),

                ElevatedButton(
                  onPressed: onPressedButton,
                  child: new Image.network(
                    'https://i.ibb.co/Gx8vMNT/coletar.png',  width: 100, height: 130,
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFFF4DE9C),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),

                    fixedSize: Size.fromRadius(56),
                  ),
                ),

              ],
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false, //retirar label
        showUnselectedLabels: false, //retirar label ao ser selecionada
        backgroundColor: const Color(0xFFF4DE9C), //cor da barra do BottomNavigationBar
        currentIndex: _indiceAtual,
        onTap: onTabTapped, //ação ao clicar no icone
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.add_alert, size: 40),
              label: "Minha conta"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.warehouse_outlined, size: 40),
              label:"Meus pedidos"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person, size: 40),
              label: "Favoritos"
          ),
        ],
      ),
    );
  }


  void onTabTapped(int index) { //colocar a ação que será feita ao clicar nos botões
    setState(() {
      _indiceAtual = index;
    });
  }

  void onPressedButton() {}

}





