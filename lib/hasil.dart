import 'package:flutter/material.dart';
import 'game.dart';

class Hasil extends StatelessWidget {
  final String nama;
  final List jawaban;
  final Function reset;
  Hasil(this.nama, this.jawaban, this.reset);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red[200],
        appBar: AppBar(
          backgroundColor: Colors.red[200],
          elevation: 0.0,
        ),
        body: Container(
          width: double.infinity,
          height: 450,
          margin: EdgeInsets.only(top: 50),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              )),
          child: Column(
            children: <Widget>[
              Text(
                "Halo " + nama,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                  height: 2.0,
                ),
              ),
              Text(
                "hmm... jawabanmu salah semua!",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  height: 1.0,
                ),
              ),
              Text(
                "Jawaban yang benar:",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w400,
                  height: 4.0,
                ),
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.only(left: 30, bottom: 40, top: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    for (var i in jawaban)
                      Text(
                        (jawaban.indexOf(i.toString()) + 1).toString() +
                            ". " +
                            i.toString(),
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          height: 1.0,
                        ),
                      )
                  ],
                ),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (content) => Game(
                                nama: nama,
                              )));
                },
                padding: EdgeInsets.all(8.0),
                color: Colors.red[200],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14.0),
                ),
                child: Text(
                  "Coba Lagi",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
