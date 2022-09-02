import 'package:flutter/material.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({Key? key}) : super(key: key);

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
        child: ListView(
          children: [

            Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  TextFormField(
                    decoration: InputDecoration(labelText: 'NOME DE USUÁRIO:',
                      labelStyle: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFF4DE9C),
                      ),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFF4DE9C),
                            width: 2,
                          )
                      ),
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
                          )
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.width * 0.1,
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'SENHA:',
                        labelStyle: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFF4DE9C),
                        ),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFF4DE9C),
                              width: 2,
                            )
                        )
                    ),
                    keyboardType: TextInputType.text,
                    onFieldSubmitted: (value) {},
                    obscureText: true,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.width * 0.1,
                  ),
                  const SizedBox(height: 3),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'CONFIRMAR SENHA:',
                      labelStyle: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFF4DE9C),
                      ),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFF4DE9C),
                            width: 2,
                          )
                      ),
                    ),
                    keyboardType: TextInputType.text,
                    onFieldSubmitted: (value) {},
                    obscureText: true,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.width * 0.1,
                  ),
                  ElevatedButton(
                    onPressed: onPressedButton,
                    child: const Text(
                      'ENVIAR',
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
          ],
        ),
    );
  }

  void onPressedButton() {
  }
}
