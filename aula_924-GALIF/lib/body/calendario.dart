import 'package:flutter/material.dart';

class Calendario extends StatefulWidget {
  const Calendario({Key? key}) : super(key: key);

  @override
  State<Calendario> createState() => _CalendarioState();
}

class _CalendarioState extends State<Calendario> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Form(
        child: Column(
          children: <Widget>[
            Text(
              "CALENDÁRIO",
              style: TextStyle(
                fontSize: 26.0,
                fontWeight: FontWeight.bold,
                color: Color(0xFF571F04),
              ),
            ),
            SizedBox(height: 10),
            Image.network(
              'https://i.ibb.co/9qh2ZBg/Design-sem-nome.png',
              width: 335,
              height: 335,
            ),
            SizedBox(height: 10),
            Container(
              width: 130,
              child: ElevatedButton(
                onPressed: onPressedButton,
                child: Row(
                  children: [
                    Text(
                      'Junho',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF571F04),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.arrow_drop_down_outlined,
                          color: Color(0xFF571F04)),
                    ),
                  ],
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFFF4DE9C),
                  shape: RoundedRectangleBorder(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onPressedButton() {}
}
