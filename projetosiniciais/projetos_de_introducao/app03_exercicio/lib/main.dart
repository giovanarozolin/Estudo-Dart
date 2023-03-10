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
  final texto =
      'Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. ';

  const TelaPrincipal({super.key});

  //
  // Função para gerar um Ícone com texto na parte inferior
  //
  Widget iconeTexto(icone, texto) {
    return Column(
      children: [
        Icon(
          icone,
          size: 60,
          color: Colors.grey.shade700,
        ),
        Text(
          texto,
          style: TextStyle(fontSize: 14),
        )
      ],
    );
  }

  Widget exibirTexto() {
    return Text(
      texto,
      style: TextStyle(fontSize: 18),
      textAlign: TextAlign.justify,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Computer Store'),
        backgroundColor: Colors.red.shade900,
      ),
      body: SingleChildScrollView(
        child: Padding(
          //padding: const EdgeInsets.all(80.0),
          padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
          child: Column(
            children: [
              Icon(
                Icons.computer,
                size: 120,
                color: Colors.grey.shade700,
              ),
              exibirTexto(),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  iconeTexto(Icons.mouse, 'Mouse'),
                  iconeTexto(Icons.monitor, 'Monitor'),
                  iconeTexto(Icons.print, 'Printer'),
                  iconeTexto(Icons.tablet_android, 'Tablet'),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              exibirTexto(),
              exibirTexto(),
              exibirTexto(),
            ],
          ),
        ),
      ),
    );
  }
}
