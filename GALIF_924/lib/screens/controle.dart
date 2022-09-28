import 'package:flutter/material.dart';

class Controle extends StatefulWidget {
  const Controle({Key? key}) : super(key: key);

  @override
  State<Controle> createState() => _ControleState();
}

class _ControleState extends State<Controle> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF25305),
      appBar: AppBar(
        leading: const BackButton(color: const Color(0xFF571F04)),
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


      body:
        Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Controle")
            ],
          ),
        ),
    );
  } 
}