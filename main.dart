import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(
      ),
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

  void _submit() {
    final isValid = _formKey.currentState?.validate();
    if (!isValid!) {
      return;
    }
    _formKey.currentState?.save();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color(0xFFF25305),
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_sharp,
          color: Color(0xFF571F04), size: 45),
        backgroundColor: const Color(0xFFF4DE9C),
        toolbarHeight: 120,

        title:Text(
          "GALIF",
          style: TextStyle(fontSize: 32.0,fontWeight: FontWeight.bold, color: Color(0xFF571F04),),
        ),
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(59),
          ),
        ),
      ),
      //body

      body: Padding(
        padding: const EdgeInsets.all(30.0),
        //form
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              SizedBox( height: 2,),

              TextFormField(
                decoration: InputDecoration(labelText: 'QUAL O TIPO DE INSERÇÃO?',
                    labelStyle: TextStyle(
                      fontSize: 17,
                      color: Color(0xFF571F04),
                    ),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFF4DE9C),
                          width: 2,
                        )
                    )
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.width * 0.1,),
              const SizedBox(height: 3),
              //text input

              TextFormField(
                decoration: InputDecoration(labelText: 'ESPÉCIE DO INDIVÍDUO:',
                    labelStyle: TextStyle(
                      fontSize: 17,
                      color: Color(0xFF571F04),
                    ),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFF4DE9C),
                          width: 2,
                        )
                    )
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.width * 0.1,),
              const SizedBox(height: 3),

              TextFormField(
                decoration: InputDecoration(labelText: 'IDADE DO INDIVÍDUO:', hintText: 'A idade deve ser em semanas',
                    labelStyle: TextStyle(
                      fontSize: 17,
                      color: Color(0xFF571F04),
                    ),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFF4DE9C),
                          width: 2,
                        )
                    )
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.width * 0.1,),
              const SizedBox(height: 3),

              TextFormField(
                decoration: InputDecoration(labelText: 'PESO DO INDIVÍDUO:', hintText: ' 0.00 kg',
                    labelStyle: TextStyle(
                      fontSize: 17,
                      color: Color(0xFF571F04),
                    ),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFF4DE9C),
                          width: 2,
                        )
                    )
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.width * 0.1,),
              const SizedBox(height: 3),

              ElevatedButton(
                onPressed: onPressedButton,
                child: const Text(
                  'INSERIR',
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
  void onPressedButton() { }
}
