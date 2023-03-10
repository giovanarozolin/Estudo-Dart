// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Exercício',
      home: TelaPrincipal(),
    ),
  );
}

//
// TELA PRINCIPAL
//
class TelaPrincipal extends StatelessWidget {
  const TelaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exercício'),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.50,
                height: 100,
                color: Colors.greenAccent.shade200,
                child: Center(
                  child: Text('A'),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.50,
                height: 100,
                color: Colors.blueAccent.shade200,
                child: Center(
                  child: Text('B'),
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.yellowAccent.shade200,
              child: Center(
                child: Text('C'),
              ),
            ),
          ),
          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.50,
                height: 100,
                color: Colors.redAccent.shade200,
                child: Center(
                  child: Text('D'),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.50,
                height: 100,
                color: Colors.purpleAccent.shade200,
                child: Center(
                  child: Text('E'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
