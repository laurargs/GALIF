import 'package:flutter/material.dart';

class Notificacao extends StatefulWidget {
  const Notificacao({Key? key}) : super(key: key);

  @override
  State<Notificacao> createState() => _NotificacaoState();
}

class _NotificacaoState extends State<Notificacao> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),

       child: ListView.builder(
        shrinkWrap: true,
        itemCount: 15,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            shape: Border(bottom: BorderSide(),),
            leading: const Icon(Icons.list),
            title: Text("Notificação " + "${index + 1}", style: TextStyle(fontWeight: FontWeight.bold)),
          );
         },     
       )
    );
  }
}
