import 'package:flutter/material.dart';


void main() => runApp(MyApp());
int _selectedIndex = 0; //New


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


//bottomNavigationBar
class _HomePageState extends State<HomePage> {
  var _formKey = GlobalKey<FormState>();

  int _indiceAtual = 1;
  //final List<Widget> _telas = [
    //NewPageScreen("Meus pedidos"),
    //NewPageScreen("teste 2"),
    //NewPageScreen("Favoritos")
  //];

/*class NewPageScreen extends StatelessWidget { //classe para a mudança de página ao clicar o botao do BottomNavigationBar
  final String texto;
  NewPageScreen(this.texto);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(texto),
      ),
    );
  }
}*/


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF25305),


      appBar: AppBar(
        backgroundColor: const Color(0xFFF4DE9C),
        toolbarHeight: 120,


        actions: [
        Icon(
            Icons.arrow_back_sharp, color: Color(0xFF571F04), size: 45),
        ],


        title: Text("GALIF", style:
        TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold, color: Color(0xFF571F04),),
        ),


        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(59),
          ),
        ),
      ),



      body: Padding(
       //child: SingleChildScrollView(

        padding: const EdgeInsets.all(30.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              Text ("CALENDÁRIO", style: TextStyle
                (fontSize: 26.0, fontWeight: FontWeight.bold, color: Color(0xFF571F04),),
              ),

              SizedBox(height: 10),

              Image.network('https://i.ibb.co/9qh2ZBg/Design-sem-nome.png', width: 335, height: 335,),

              SizedBox(height: 10),

              Container(
                width: 130,
                child: ElevatedButton(
                  onPressed: onPressedButton,
                  child: Row(
                    children: [
                      Text('Junho', style: TextStyle (fontSize: 20, color: Color(0xFF571F04),),),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.arrow_drop_down_outlined, color: Color(0xFF571F04)),
                      ),
                    ],
                  ),


                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFFF4DE9C),
                    shape: RoundedRectangleBorder(
                    ),
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
        backgroundColor: const Color(0xFFF4DE9C), //cor da barra do BottomNavigationBar
        currentIndex: _indiceAtual,
        onTap: onTabTapped, //ação ao clicar no icone
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.add_alert, size: 40),
              label: ""
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.warehouse_outlined, size: 40),
              label:""
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person, size: 40),
              label: ""
          ),
        ],
      ),
    );
  }


  void onTabTapped(int index) { //colocar a ação que será feita ao clicar nos botões
    setState(()
      {_indiceAtual = index;}
    );
  }


  void onPressedButton() {}
}
