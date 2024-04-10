import 'dart:math';

import 'package:cara_ou_coroa/views/play.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _navigateToPlayScreen() {
    int randomNumber = Random().nextInt(2);

    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (ctx) => PlayScreen(randomNumber: randomNumber),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff61bd8c), // hex: 0xff<hexadecimal code>
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('images/logo.png'),
            Padding(
              padding: const EdgeInsets.only(top: 32),
              child: GestureDetector(
                onTap: _navigateToPlayScreen,
                child: Image.asset('images/botao_jogar.png'),
              )
            )
          ],
        )
      )
    );
  }
}
