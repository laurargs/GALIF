import 'package:flutter/material.dart';

class TelaDeInserir extends StatefulWidget {
  const TelaDeInserir({Key? key}) : super(key: key);

  @override
  State<TelaDeInserir> createState() => _TelaDeInserirState();
}

class _TelaDeInserirState extends State<TelaDeInserir> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
        //form
        child: SingleChildScrollView(
          child: Form(
            child: Column(
              children: <Widget>[
                SizedBox( height: 10),

                TextFormField(
                  decoration:
                  InputDecoration(labelText: 'QUAL O TIPO DE INSERÇÃO?',
                      labelStyle: TextStyle( fontSize: 17, color: Color(0xFF571F04),),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide( color: Color(0xFFF4DE9C), width: 2,)
                      )
                   ),
                ),
                SizedBox(height: MediaQuery.of(context).size.width * 0.1,),
                const SizedBox(height: 2),
                //text input

                TextFormField(
                  decoration: InputDecoration(labelText: 'ESPÉCIE DO INDIVÍDUO:',
                      labelStyle: TextStyle(fontSize: 17, color: Color(0xFF571F04),),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFF4DE9C), width: 2,)
                      )
                   ),
                 ),
                SizedBox(height: MediaQuery.of(context).size.width * 0.1,),
                const SizedBox(height: 2),

                TextFormField(
                  decoration: InputDecoration(labelText: 'IDADE DO INDIVÍDUO:', hintText: 'A idade deve ser em semanas',
                      labelStyle: TextStyle(fontSize: 17, color: Color(0xFF571F04),),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFF4DE9C), width: 2,
                          )
                      )
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.width * 0.1,),
                const SizedBox(height: 2),

                TextFormField(
                  decoration: InputDecoration(labelText: 'PESO DO INDIVÍDUO:', hintText: ' 0.00 kg',
                      labelStyle: TextStyle( fontSize: 17, color: Color(0xFF571F04),),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide( color: Color(0xFFF4DE9C), width: 2,)
                      )
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.width * 0.1,),
                const SizedBox(height: 2),

                ElevatedButton(
                  onPressed: onPressedButton,
                  child: const Text('INSERIR',
                    style: TextStyle(
                      fontSize: 20,
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
        ),
    );
  }

  void onPressedButton() {
  }
}
