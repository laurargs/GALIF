import 'package:GALIF_924/body/login.dart';
import 'package:GALIF_924/body/cadastro.dart';
import 'package:flutter/material.dart';

class Inicio extends StatefulWidget {
  const Inicio({Key? key}) : super(key: key);

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
        color: Colors.orange,
        child: Column(
          children: [
            const SizedBox(
              height: 34,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network('https://i.ibb.co/MZ8BpTk/Logo1.png', width: 200),
              ],
            ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
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
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
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
          ],
        ),
      ),
    );
  }
  void onPressedButton() {}
}