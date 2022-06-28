import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
        home: HomePage()
    ),
  );
}


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF25305),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'GALIF',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF571f04),
                    ),
                  ),
                  const SizedBox(height: 3),
                  Image.network(
                    'https://i.ibb.co/hRFYdK9/Logo1.png',
                    width: 200,
                    height: 300,
                    //fit: BoxFit.fitHeight,
                  ),
                  const SizedBox(height: 3),

                  TextFormField(
                    decoration: InputDecoration(labelText: 'NOME DE USUÁRIO:',
                      labelStyle: TextStyle(
                        fontSize: 17,
                        color: Color(0xFFEFB03B),
                      ),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFEFB03B),
                            width: 2,
                          )
                      ),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    onFieldSubmitted: (value) {},
                    obscureText: true,


                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.width * 0.1,
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'SENHA:',
                        labelStyle: TextStyle(
                          fontSize: 17,
                          color: Color(0xFFEFB03B),
                        ),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFEFB03B),
                              width: 2,
                            )
                        )
                    ),
                    keyboardType: TextInputType.emailAddress,
                    onFieldSubmitted: (value) {},
                    obscureText: true,


                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.width * 0.1,
                  ),
                  const SizedBox(height: 3),
                  ElevatedButton(
                    onPressed: onPressedButton,
                    child: const Text(
                      'ENTRAR',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF571F04),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFFFCC99),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ),
                  const Text(
                    'FAZER CADASTRO',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFFF4DE9C),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onPressedButton() {

  }
}
