import 'package:flutter/material.dart';

class Alimenta extends StatefulWidget {
  const Alimenta({Key? key}) : super(key: key);

  @override
  State<Alimenta> createState() => _AlimentaState();
}

class _AlimentaState extends State<Alimenta> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),

       child: ListView.builder(
        shrinkWrap: true,
        itemCount: 15,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text("Notificação " + "${index + 1}"),
            trailing: const Icon(Icons.chevron_right),
          );
         },     
       )
    );

  }

  void onPressedButton() {
  }
}
