// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import 'widget_carro.dart';

class TelaPrincipal extends StatelessWidget {
  const TelaPrincipal({super.key});

  linha(carro1, carro2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        carro1,
        carro2,
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            linha(
              WidgetCarro('Audi', 'Q8', 'lib/images/audi_q8.jpg'),
              WidgetCarro('Audi', 'R8', 'lib/images/audi_r8.jpg'),
            ),
            linha(
              WidgetCarro('BMW', 'M2', 'lib/images/bmw_m2.jpg'),
              WidgetCarro('Ferrari', '488', 'lib/images/ferrari_488.jpg'),
            ),
            linha(
              WidgetCarro(
                'Lamborghini',
                'Huracan',
                'lib/images/lamborghini_huracan.jpg',
              ),
              WidgetCarro(
                'Lamborghini',
                'Urus',
                'lib/images/lamborghini_urus.jpg',
              ),
            ),
            WidgetCarro(
              'Maserati',
              'GTS',
              'lib/images/maserati_gts.jpg',
            ),
          ],
        ),
      ),
    );
  }
}
