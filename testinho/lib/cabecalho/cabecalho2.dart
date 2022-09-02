import 'package:flutter/material.dart';

class Cabecalho2 extends StatefulWidget {
  const Cabecalho2({Key? key}) : super(key: key);

  @override
  State<Cabecalho2> createState() => _Cabecalho2State();
}

class _Cabecalho2State extends State<Cabecalho2> {

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFFF4DE9C),
      toolbarHeight: 120,
    );
  }
}

