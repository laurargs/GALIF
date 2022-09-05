import 'package:GALIF_924/body/cadastro.dart';
import 'package:GALIF_924/body/calendario.dart';
import 'package:GALIF_924/body/gridview_page.dart';
import 'package:GALIF_924/body/home_page.dart';
import 'package:GALIF_924/body/login.dart';
import 'package:GALIF_924/body/menu.dart';
import 'package:GALIF_924/body/notification.dart';
import 'package:GALIF_924/body/pacote_detalhes.dart';
import 'package:GALIF_924/body/tela_inserir.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'Inicio',
  
      routes: { 
        "Cadastro": (context) => const Cadastro(), 
        "Calendario": (context) => const Calendario(),
        "GridView": (context) => const GridViewPage(),
        "HomePage":(context) => const HomePage(),
        "Inicio":(context) => const Inicio(),
        "Login":(context) => const Login(),
        "Menu":(context) => const Menu(),
        "Notificacao":(context) => const Notificacao(),
        "TelaInserir":(context) => const TelaDeInserir(),
      },
    ),
  );
}
