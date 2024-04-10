import 'package:flutter/material.dart';

class PlayScreen extends StatefulWidget {
  const PlayScreen({super.key, required this.randomNumber});

  final int randomNumber;

  @override
  State<PlayScreen> createState() => _PlayScreenState();
}

class _PlayScreenState extends State<PlayScreen> {
  final Map<int, String> _resultsMap = Map.from({
    0: 'cara',
    1: 'coroa',
  });

  void _returnToHome() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 97, 189, 140),
        body: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('images/moeda_${_resultsMap[widget.randomNumber]}.png'),
                Padding(
                    padding: const EdgeInsets.only(top: 72),
                    child: GestureDetector(
                      onTap: _returnToHome,
                      child: Image.asset('images/botao_voltar.png'),
                    )
                )
              ],
            )
        )
    );
  }
}
