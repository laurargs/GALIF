import 'package:flutter/material.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({Key? key}) : super(key: key);

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF25305),
      appBar: AppBar(
        leading: const BackButton(
          color: Color(0xFF571F04),
        ),
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
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              decoration: const InputDecoration(
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
              decoration: const InputDecoration(
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
              decoration: const InputDecoration(
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
              decoration: const InputDecoration(
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
                Navigator.pushNamed(context, "Login");
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFF4DE9C),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: const Text(
                'CADASTRAR',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF571F04),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}