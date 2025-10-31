import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sayi_tahmin_app/SonucEkrani.dart';

class Tahminekrani extends StatefulWidget {
  const Tahminekrani({super.key});

  @override
  State<Tahminekrani> createState() => _TahminekraniState();
}

class _TahminekraniState extends State<Tahminekrani> {

  var tfTahmin = TextEditingController();
  int rastgeleSayi = 0;
  int kalanHak = 5;
  String yonlendirme = "";

  @override
  void initState() {
    super.initState();
    rastgeleSayi = Random().nextInt(101);
    print("Rastgele Sayı : $rastgeleSayi");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tahmin Ekranı", style: TextStyle(
          color: Colors.white,
        ),),
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Kalan Hak : $kalanHak", style: TextStyle(
              color: Colors.red,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),),
            Text("Yardım :  $yonlendirme", style: TextStyle(
              color: Colors.black,
              fontSize: 24,
            ),),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                  controller: tfTahmin,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                  labelText: "Tahmin",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                ),
              ),
            ),
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                child: Text("TAHMİN ET"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                ),
                onPressed: (){
                  setState(() {
                    kalanHak = kalanHak - 1;
                  });
                  int tahmin = int.parse(tfTahmin.text);
                  if(tahmin == rastgeleSayi){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Sonucekrani(sonuc: true,)));
                    return;
                  }
                  if(tahmin > rastgeleSayi){
                    setState(() {
                      yonlendirme = "Tahmini Azalt";
                    });
                  }
                  if(tahmin < rastgeleSayi){
                    setState(() {
                      yonlendirme = "Tahmini Arttır";
                    });
                  }
                  if(kalanHak == 0){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Sonucekrani(sonuc: false,)));
                  }
                  tfTahmin.text = "";
                },
              ),
            ),

          ],
        ),
      ),
    );
  }
}
