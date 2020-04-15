import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red[200],
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.red[200],
        ),
        body: Container(
          height: 500,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
          margin: EdgeInsets.only(top: 20),
          child: Column(
            children: <Widget>[
              Text(
                "Cara Bermain",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 2.0,
                  height: 2.5,
                ),
              ),
              Text(
                "Akan terdapat 5 babak",
                style: TextStyle(
                  fontSize: 20,
                  height: 5.0,
                ),
              ),
              Text(
                "Pilihlah jawaban yang di anggap benar",
                style: TextStyle(
                  fontSize: 20,
                  height: 2.0,
                ),
              ),
              Text(
                "Untuk memilih hanya perlu mengklick",
                style: TextStyle(
                  fontSize: 20,
                  height: 2.5,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 70),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  padding: EdgeInsets.all(8.0),
                  color: Colors.red[200],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  child: Text(
                    'Kembali',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
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
