import 'package:GALIF_924/body/alimenta.dart';
import 'package:GALIF_924/body/cadastro.dart';
import 'package:GALIF_924/body/calendario.dart';
import 'package:GALIF_924/body/coleta.dart';
import 'package:GALIF_924/body/controle.dart';
import 'package:GALIF_924/body/gridview_page.dart';
import 'package:GALIF_924/body/home_page.dart';
import 'package:GALIF_924/body/inicio.dart';
import 'package:GALIF_924/body/limpeza.dart';
import 'package:GALIF_924/body/login.dart';
import 'package:GALIF_924/body/menu.dart';
import 'package:GALIF_924/body/notification.dart';
import 'package:GALIF_924/body/tela_inserir.dart';
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