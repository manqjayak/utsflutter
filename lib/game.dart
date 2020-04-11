import 'package:flutter/material.dart';
import 'pertanyaan.dart';
import 'jawaban.dart';
import 'hasil.dart';

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
        {
          "salah": "Ayamnya habis, tapi nasinya masih banyak",
          "benar": "Ayam yang berkokok pagi hari"
        },
        {
          "salah": "Ayam yang berkokok pagi hari",
          "benar": "Ayamnya habis, tapi nasinya masih banyak"
        }
      ]
    },
    {
      "soal": "Mengapa motor berhenti di depan lampu merah?",
      "jawaban": [
        {
          "salah": "Karena lampu merah",
          "benar": "Karena motornya direm",
        },
        {
          "salah": "Karena motornya direm",
          "benar": "Karena lampu merah",
        }
      ]
    },
    {
      "soal": "Bahasa Mandari dari lantai basah?",
      "jawaban": [
        {
          "salah": "湿地板",
          "benar": "Lhi Chin",
        },
        {
          "salah": "Lhi Chin",
          "benar": "湿地板",
        }
      ]
    },
    {
      "soal": "Jenis kutu apa yang mengerikan?",
      "jawaban": [
        {
          "salah": "Kutu-kan",
          "benar": "Desiccants",
        },
        {
          "salah": "Desiccants",
          "benar": "Kutu-kan",
        }
      ]
    },
    {
      "soal": "1 + 1 = ",
      "jawaban": [
        {
          "salah": 'Jendela',
          "benar": 'dua',
        },
        {
          "salah": 'dua',
          "benar": 'Jendela',
        }
      ]
    }
  ];

  var _benar = [];
  void _lanjutPertanyaan(String benar) {
    _benar.add(benar);
    print(_benar);
    setState(() {
      _index += 1;
    });
    if (_index < _apalah.length) {
      print("oke");
    }
  }

  Function _resetSoal() {
    setState(() {
      _index = 0;
      _benar.clear();
    });
  }

  @override
  // cara mengambil data nama = widget.nama
  Widget build(BuildContext context) {
    return _index < _apalah.length
        ? MaterialApp(
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
                            ...(_apalah[_index]['jawaban']
                                    as List<Map<String, Object>>)
                                .map((jawaban) {
                              return Jawaban(jawaban["salah"],
                                  () => _lanjutPertanyaan(jawaban["benar"]));
                            }),
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
          )
        : Hasil(widget.nama, _benar, _resetSoal);
  }
}
