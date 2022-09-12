import 'package:flutter/material.dart';

class Limpeza extends StatefulWidget {
  const Limpeza({Key? key}) : super(key: key);

  @override
  State<Limpeza> createState() => _LimpezaState();
}

class _LimpezaState extends State<Limpeza> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),

       child: ListView.builder(
        shrinkWrap: true,
        itemCount: 15,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text("limpa " + "${index + 1}"),
            trailing: const Icon(Icons.chevron_right),
          );
         },     
       )
    );

  }

  void onPressedButton() {
  }
}