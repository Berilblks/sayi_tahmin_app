import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sonucekrani extends StatefulWidget {

  final bool sonuc;


  Sonucekrani({required this.sonuc});

  @override
  State<Sonucekrani> createState() => _SonucekraniState();
}

class _SonucekraniState extends State<Sonucekrani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sonuç Ekranı", style: TextStyle(
          color: Colors.white,
        ),),
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            widget.sonuc ? Image.asset("image/mutlu_resim.png") : Image.asset("image/uzgun_resim.png"),
            Text(widget.sonuc ? "Kazandınız" : "Kaybettiniz", style: TextStyle(
              color: Colors.indigo,
              fontSize: 30,
              fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                child: Text("TEKRAR DENE"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigo,
                  foregroundColor: Colors.white,
                ),
                onPressed: (){
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
