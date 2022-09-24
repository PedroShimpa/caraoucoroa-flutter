import 'dart:math';
import 'package:caraoucoroa/Resultado.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void _exibirResultado() {
    var opcoes = ["moeda_cara.png", "moeda_coroa.png"];
    var numero = Random().nextInt(opcoes.length);
    var caraOuCoroa = opcoes[numero];

    Navigator.push(context,
        MaterialPageRoute(builder: (context) => Resultado(caraOuCoroa)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset("images/logo.png"),
              GestureDetector(
                  onTap: () => _exibirResultado(),
                  child: Image.asset("images/botao_jogar.png"))
            ]),
      ),
    );
  }
}
