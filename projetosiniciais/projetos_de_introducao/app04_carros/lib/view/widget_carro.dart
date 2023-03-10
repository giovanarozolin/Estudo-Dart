// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';

class WidgetCarro extends StatelessWidget {
  //Atributos
  final String marca;
  final String modelo;
  final String foto;
  //Construtor
  const WidgetCarro(this.marca, this.modelo, this.foto, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        border: Border.all(
          color: Colors.grey.shade400,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Text(
            '$marca / $modelo',
            style: TextStyle(fontSize: 18, overflow: TextOverflow.clip),
          ),
          Image.asset(
            foto,
            width: 200,
            fit: BoxFit.fitWidth,
          ),
        ],
      ),
    );
  }
}
