import 'package:flutter/material.dart';

class Coleta extends StatefulWidget {
  const Coleta({Key? key}) : super(key: key);

  @override
  State<Coleta> createState() => _ColetaState();
}

class _ColetaState extends State<Coleta> {
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