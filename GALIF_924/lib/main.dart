import 'package:GALIF_924/screens/alimenta.dart';
import 'package:GALIF_924/screens/cadastro.dart';
import 'package:GALIF_924/screens/calendario.dart';
import 'package:GALIF_924/screens/coleta.dart';
import 'package:GALIF_924/screens/controle.dart';
import 'package:GALIF_924/screens/gridview_page.dart';
import 'package:GALIF_924/screens/home_page.dart';
import 'package:GALIF_924/screens/inicio.dart';
import 'package:GALIF_924/screens/limpeza.dart';
import 'package:GALIF_924/screens/login.dart';
import 'package:GALIF_924/screens/menu.dart';
import 'package:GALIF_924/screens/notification.dart';
import 'package:GALIF_924/screens/tela_inserir.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'Inicio',
      routes: {
        "Alimenta": (context) => const Alimenta(),
        "Cadastro": (context) => const Cadastro(),
        "Calendario": (context) => const Calendario(),
        "Coleta": (context) => const Coleta(),
        "Controle": (context) => const Controle(),
        "GridView": (context) => const GridViewPage(),
        "HomePage": (context) => const HomePage(),
        "Inicio": (context) => const Inicio(),
        "Login": (context) => const Login(),
        "Limpeza": (context) => const Limpeza(),
        "Menu": (context) => const Menu(),
        "Notificacao": (context) => const Notificacao(),
        "TelaInserir": (context) => const TelaDeInserir(),
      },
    ),
  );
}