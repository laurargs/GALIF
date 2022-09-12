import 'package:flutter/material.dart';

class Notificacao extends StatefulWidget {
  const Notificacao({Key? key}) : super(key: key);

  @override
  State<Notificacao> createState() => _NotificacaoState();
}

class _NotificacaoState extends State<Notificacao> {
  List<String> avisos = ["cotelar ovos", "Seu dia de limpeza é amanhã!!","Atualização do peso das galinha"];
  List<String> mensagem = ["o ninho 1 atingiu a menta de ovos para consumo", "remover bosta das galinha","Sua galinha afilhada aumentou 30% de massa"];
  List<String> hora = ["12:28","10:40","02:39"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16.0),
        color: const Color(0xFFF25305),
        child: ListView.builder(
          itemCount: avisos.length,
          itemBuilder: (context, index){
            return ListTile(
              shape: Border(bottom: BorderSide()),
              leading: CircleAvatar(child: Text(avisos[index][0]), backgroundColor: Color(0xFF571F04), foregroundColor: Colors.white,),
              title: Text(avisos[index], 
              style: TextStyle( fontSize: 16.0, fontWeight: FontWeight.bold, color: Color(0xFF571F04),),
              ),
              subtitle: Text(mensagem[index],
              style: TextStyle( fontSize: 13.0, color: Color.fromARGB(255, 82, 50, 34),),
              ),
              trailing: Text(hora[index],
              style: TextStyle( fontSize: 11.0, color: Color.fromARGB(255, 241, 149, 103),),
              ),
            );
           }
          ),
       ),
    );
  }

  void onPressedButton() {
  }
}