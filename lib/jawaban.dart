import 'package:flutter/material.dart';

class Jawaban extends StatelessWidget {
  final String isiJawaban;
  final Function lanjutIndex;
  Jawaban(this.isiJawaban, this.lanjutIndex);
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(
          left: 5,
          right: 5,
        ),
        width: 150,
        height: 150,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.red),
          color: Colors.red[200],
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        child: FlatButton(
          child: Text(
            isiJawaban,
            style: TextStyle(
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
          onPressed: lanjutIndex,
        ));
  }
}
