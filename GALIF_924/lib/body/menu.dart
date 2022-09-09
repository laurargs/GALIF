import 'package:GALIF_924/data/BD.dart';
import 'package:GALIF_924/domain/pacote_turistico.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  List<PacoteTuristico> list = BD.lista;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          const SizedBox(
            height: 34,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "Calendario");
                },
                child: null,
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xFFF4DE9C),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  fixedSize: Size.fromRadius(56),
                ),
              ),
              Container(
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, "TelaInserir");
                  },
                  icon: Icon(Icons.add,
                      color: Colors.black), //icon data for elevated button
                  label: Text("Inserir"), //label text
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFFF4DE9C),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    fixedSize: Size.fromRadius(56),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                onPressed: onPressedButton,
                child: null,
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xFFF4DE9C),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  fixedSize: Size.fromRadius(56),
                ),
              ),
              ElevatedButton(
                onPressed: onPressedButton,
                child: null,
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xFFF4DE9C),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  fixedSize: Size.fromRadius(56),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                onPressed: onPressedButton,
                child: null,
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xFFF4DE9C),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  fixedSize: Size.fromRadius(56),
                ),
              ),
              ElevatedButton(
                onPressed: onPressedButton,
                child: null,
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xFFF4DE9C),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  fixedSize: Size.fromRadius(56),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void onPressedButton() {}
}
