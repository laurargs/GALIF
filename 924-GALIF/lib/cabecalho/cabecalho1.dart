import 'package:flutter/material.dart';

class cabecalho1 extends StatefulWidget {
  const cabecalho1({Key? key}) : super(key: key);

  @override
  State<cabecalho1> createState() => _cabecalho1State();
}

class _cabecalho1State extends State<cabecalho1> {

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFFF4DE9C),
      toolbarHeight: 120,
      actions: [
        Icon(Icons.arrow_back_sharp, color: Color(0xFF571F04), size: 45),
      ],
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
    );
  }
}

