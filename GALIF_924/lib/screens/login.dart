import 'package:GALIF_924/screens/gridview_page.dart';
import 'package:GALIF_924/screens/menu.dart';
import 'package:GALIF_924/screens/notification.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF25305),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFFF4DE9C),
        toolbarHeight: 120,
        // actions: [
        //   Icon(Icons.arrow_back_sharp, color: Color(0xFF571F04), size: 45),
        // ],
        title: Text(
          "    GALIF",
          style: TextStyle(
            fontSize: 32.0,
            fontWeight: FontWeight.bold,
            color: Color(0xFF571F04),
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(59),
          ),
        ),
      ),
      body: 
        SingleChildScrollView(
          child: Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
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
                      )),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.width * 0.1,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
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
                  SizedBox(
                    height: MediaQuery.of(context).size.width * 0.1,
                  ),
                  
                  ElevatedButton(
                    onPressed: () {
                    Navigator.pushNamed(context, "HomePage");
                  },
                    child: const Text(
                      'LOGIN',
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
        ),
      
    );
  }
}