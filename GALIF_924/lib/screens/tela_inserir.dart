import 'package:GALIF_924/data/galinha_dao.dart';
import 'package:GALIF_924/domain/variaveis_galinhas.dart';
import 'package:flutter/material.dart';

class TelaDeInserir extends StatefulWidget {
  const TelaDeInserir({Key? key}) : super(key: key);

  @override
  State<TelaDeInserir> createState() => _TelaDeInserirState();
}

class _TelaDeInserirState extends State<TelaDeInserir> {
  final _formKey = GlobalKey<FormState>();
  final nomeController = TextEditingController();
  final pesoController = TextEditingController();
  final especieController = TextEditingController();
  final idadeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF25305),
      appBar: AppBar(
        leading: const BackButton(color: Color(0xFF571F04)),
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
      body: Container(
        padding: const EdgeInsets.all(20.0),
        //form
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                const SizedBox(height: 10),
                TextFormField(
                  controller: nomeController,
                  cursorColor: const Color(0xFF571F04),
                  decoration: const InputDecoration(
                      labelText: 'NOME:',
                      labelStyle: TextStyle(
                          fontSize: 17,
                          color: Color(0xFFF4DE9C),
                          fontWeight: FontWeight.bold),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                        color: Color(0xFFF4DE9C),
                        width: 2,
                      ))),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.1,
                ),
                const SizedBox(height: 2),
                //text input

                TextFormField(
                  controller: especieController,
                  cursorColor: const Color(0xFF571F04),
                  decoration: const InputDecoration(
                    labelText: 'ESPÉCIE:',
                    labelStyle: TextStyle(
                        fontSize: 17,
                        color: Color(0xFFF4DE9C),
                        fontWeight: FontWeight.bold),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                      color: Color(0xFFF4DE9C),
                      width: 2,
                    )),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                      color: Color(0xFFF4DE9C),
                      width: 2,
                    )),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.1,
                ),
                const SizedBox(height: 2),

                TextFormField(
                  controller: idadeController,
                  cursorColor: const Color(0xFF571F04),
                  decoration: const InputDecoration(
                      labelText: 'IDADE:',
                      hintText: 'A idade deve ser em semanas',
                      labelStyle: TextStyle(
                          fontSize: 17,
                          color: Color(0xFFF4DE9C),
                          fontWeight: FontWeight.bold),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                        color: Color(0xFFF4DE9C),
                        width: 2,
                      ))),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.1,
                ),
                const SizedBox(height: 2),

                TextFormField(
                  controller: pesoController,
                  cursorColor: const Color(0xFF571F04),
                  decoration: const InputDecoration(
                      labelText: 'PESO:',
                      hintText: ' 0.00 kg',
                      labelStyle: TextStyle(
                          fontSize: 17,
                          color: Color(0xFFF4DE9C),
                          fontWeight: FontWeight.bold),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                        color: Color(0xFFF4DE9C),
                        width: 2,
                      ))),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.1,
                ),
                const SizedBox(height: 2),

                ElevatedButton(
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      if (nomeController.text.isNotEmpty && pesoController.text.isNotEmpty && idadeController.text.isNotEmpty && especieController.text.isNotEmpty) {
                        String nomeDigitado = nomeController.text;
                        String pesoDigitado = pesoController.text;
                        String idadeDigitada = idadeController.text;
                        String especieDigitado = especieController.text;

                        Individuos galinha = Individuos(
                            nome: nomeDigitado,
                            peso: pesoDigitado,
                            semanas: idadeDigitada,
                            especie: especieDigitado);
                        await GalinhaDao().criarGalinha(galinha: galinha);
                        showSnackBar('Galinha salva com sucesso!');
                        Navigator.pushReplacementNamed(context, "HomePage");
                      }
                      else {
                        showSnackBar("Dados inválidos");
                      }
                    } else {
                      showSnackBar("Erro na validação");
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFFF4DE9C),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: const Text(
                    'INSERIR',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFF571F04),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  showSnackBar(String msg) {
    final snackBar = SnackBar(
      behavior: SnackBarBehavior.floating,
      margin: const EdgeInsets.symmetric(
        vertical: 80,
        horizontal: 32,
      ),
      content: Text(msg),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}