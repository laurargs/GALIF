import 'package:flutter/material.dart';

class coleta extends StatefulWidget {
  const coleta({Key? key}) : super(key: key);

  @override
  State<coleta> createState() => _NotificacaoState();
}

class _NotificacaoState extends State<coleta> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),

       child: ListView.builder(
        shrinkWrap: true,
        itemCount: 15,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text("caletar " + "${index + 1}"),
            trailing: const Icon(Icons.chevron_right),
          );
         },     
       )
    );

  }

  void onPressedButton() {
  }
}