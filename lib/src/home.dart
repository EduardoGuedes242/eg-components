// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:kit_ui/src/components/butttons/eg_button_with_icon.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void funcaoTeste() {
    print('Teste Guedes');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            egButtonWithIcon(
              title: 'Register',
              pathIcon: 'assets/icons/icone_button.svg',
              function: funcaoTeste,
            ),
          ],
        ),
      ),
    );
  }
}
