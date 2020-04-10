import 'package:flutter/material.dart';

class Game extends StatefulWidget {
  String nama;

  Game(this.nama);
  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {
  List _apalah = [
    {
      "soal": "Ayam apa yang bikin sebel?",
      "jawaban": [
        "Ayamnya habis, tapi nasinya masih banyak",
        "Ayam yang berkokok pagi hari"
      ]
    },
    {
      "soal": "Mengapa motor berhenti di depan lampu merah?",
      "jawaban": ["Karena lampu merah", "Karena motornya direm"]
    },
    {
      "soal": "Bahasa Mandari dari lantai basah?",
      "jawaban": ["湿地板", "Lhi Chin"]
    },
    {
      "soal": "Jenis kutu apa yang mengerikan?",
      "jawaban": ["Kutu-kan", "Desiccants"]
    },
    {
      "soal": "1 + 1 = ",
      "jawaban": ['Jendela', 'dua']
    }
  ];
  @override
  // cara mengambil data nama = widget.nama
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          elevation: 0.0,
        ),
        body: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          width: double.infinity,
          height: double.infinity,
          margin: EdgeInsets.only(top: 40),
          child: Column(
            children: <Widget>[
              Container(
                child: Text(
                  "Soal 1: 湿地板",
                  style: TextStyle(
                    height: 4,
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
