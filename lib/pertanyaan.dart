import 'package:flutter/material.dart';

class Pertanyaan extends StatelessWidget {
  final String isiPertanyaan;
  final int index;

  Pertanyaan(this.isiPertanyaan, this.index);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          child: Text(
            "Soal " + index.toString(),
            style: TextStyle(
              height: 4,
              fontSize: 22,
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 50),
          child: Text(
            isiPertanyaan,
            style: TextStyle(
              height: 1,
              fontSize: 22,
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
