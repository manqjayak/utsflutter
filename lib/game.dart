import 'package:flutter/material.dart';
import 'pertanyaan.dart';
import 'jawaban.dart';

class Game extends StatefulWidget {
  String nama;

  Game(this.nama);
  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {
  var _index = 0;
  final _apalah = const [
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

  Function _resetIndex() {
    setState(() {
      _index = 0;
    });
  }

  void _lanjutPertanyaan() {
    setState(() {
      _index += 1;
    });
    if (_index < _apalah.length) {
      print("oke");
    }
  }

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
              Pertanyaan(_apalah[_index]["soal"], _index + 1),
              Container(
                margin: EdgeInsets.only(top: 60),
                padding: EdgeInsets.only(
                  left: 40,
                  right: 40,
                ),
                height: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    ...(_apalah[_index]['jawaban'] as List<String>)
                        .map((jawaban) {
                      return Jawaban(jawaban, _lanjutPertanyaan);
                    }),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
