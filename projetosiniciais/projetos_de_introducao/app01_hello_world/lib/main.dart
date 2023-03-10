// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

//
// BLOCO PRINCIPAL
//
void main() {
  //Especificar a execução de um App
  runApp(
    //Indicar que o App deverá seguir o
    //padrão Material Design
    MaterialApp(
      title: 'Hello World',
      debugShowCheckedModeBanner: false,

      //Definir qual será a primeira UI a ser exibida
      home: TelaPrincipal(),
    ),
  );
}

//
// TELA PRINCIPAL
//
class TelaPrincipal extends StatelessWidget {
  const TelaPrincipal({super.key});

  //O método BUILD é utilizado para especificar
  //todos os widgets que fazem parte da UI
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //barra de título
      appBar: AppBar(
        title: Text(
          'Título',
          style: TextStyle(
            color: Colors.black,
            fontSize: 28,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
      ),

      body: Column(
        //Eixo Principal
        mainAxisAlignment: MainAxisAlignment.center,
        //Eixo Secundário
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Row(
            //Eixo Principal
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Icon(
                Icons.computer,
                size: 100,
              ),
              Text('Hello ADS'),
            ],
          ),
          Text('FATEC Ribeirão'),
          Container(
            width: 300,
            height: 150,
            color: Colors.blue,
            child: Center(
              child: Text('ADS'),
            ),
          ),
        ],
      ),
    );
  }
}
