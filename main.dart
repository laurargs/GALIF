import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(

      ),
      theme: ThemeData(
        //cardColor: Colors.deepOrange,

        //brightness: Brightness.dark,
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
      //body
      body: Padding(

        padding: const EdgeInsets.all(30.0),

        //form
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              Container(
                height: 150,
                decoration: new BoxDecoration(
                  color: Color(0xFFF4DE9C),

                  boxShadow: [
                    new BoxShadow(blurRadius: 20.0)
                  ],
                  borderRadius: new BorderRadius.vertical(
                      bottom: new Radius.elliptical(
                          MediaQuery.of(context).size.width, 150.0)),
                ),
              ),




              Text(
                "GALIF",
                style: TextStyle(fontSize: 36.0, fontWeight: FontWeight.bold, color: Color(0xFF571F04),),
              ),
              //styling
              SizedBox(
                height: 0.5,
              ),
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
                keyboardType: TextInputType.emailAddress,
                onFieldSubmitted: (value) {},
                obscureText: true,


              ),
              SizedBox(height:1),
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
                keyboardType: TextInputType.emailAddress,
                onFieldSubmitted: (value) {},
                obscureText: true,
              ),
              SizedBox(height:1),
              TextFormField(
                decoration: InputDecoration(labelText: 'IDADE DO INDIVÍDUO:',
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
                keyboardType: TextInputType.emailAddress,
                onFieldSubmitted: (value) {},
                obscureText: true,


              ),
              SizedBox(height:1),
              TextFormField(
                decoration: InputDecoration(labelText: 'PESO DO INDIVÍDUO:',
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
                keyboardType: TextInputType.emailAddress,
                onFieldSubmitted: (value) {},
                obscureText: true,

              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.1,
              ),

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
  void onPressedButton() {
  }
}
