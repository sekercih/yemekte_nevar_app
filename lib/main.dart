// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            "Bugun Yemekte Ne Var?",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: YemekSayfasi(),
      ),
    );
  }
}

class YemekSayfasi extends StatefulWidget {
  @override
  State<YemekSayfasi> createState() => _YemekSayfasiState();
}

class _YemekSayfasiState extends State<YemekSayfasi> {
  int corbaNo = 2;

  int yemekNo = 1;

  int tatliNo = 3;

  List<String> corbaAdlari = [
    "Mercimek",
    "Tarhana",
    "Tavuksuyu",
    "Düğün Çorbasi",
    "Yoğurtlu Çorba"
  ];
  List<String> yemekAdlari = [
    'Karnıyarık',
    'Mantı',
    'Kuru Fasulye',
    'İçli Köfte',
    'Izgara Balık'
  ];
  List<String> tatliAdlari = [
    'Kadayıf',
    'Baklava',
    'Sütlaç',
    'Kazandibi',
    'Dondurma'
  ];

  void rastgeleYemek() {
    setState(() {
      yemekNo = Random().nextInt(5) + 1;
      corbaNo = Random().nextInt(5) + 1;
      tatliNo = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.red,
                    shadowColor: Colors.blue,
                    //backgroundColor: Colors.pink,
                  ),
                  onPressed: rastgeleYemek,
                  child: Image.asset("assets/corba_$corbaNo.jpg")),
            ),
          ),
          Text(
            corbaAdlari[corbaNo - 1],
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 10,
              color: Colors.black,
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                  style: TextButton.styleFrom(
                      primary: Colors.red, shadowColor: Colors.blue),
                  onPressed: rastgeleYemek,
                  child: Image.asset("assets/yemek_$yemekNo.jpg")),
            ),
          ),
          Text(yemekAdlari[yemekNo - 1], style: TextStyle(fontSize: 20)),
          Container(
              width: 200, child: Divider(height: 10, color: Colors.black)),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                  style: TextButton.styleFrom(
                      shadowColor: Colors.blue, primary: Colors.red),
                  onPressed: rastgeleYemek,
                  child: Image.asset("assets/tatli_$tatliNo.jpg")),
            ),
          ),
          Text(tatliAdlari[tatliNo - 1], style: TextStyle(fontSize: 20)),
          Container(
              width: 200, child: Divider(height: 10, color: Colors.black)),
        ],
      ),
    );
  }
}
