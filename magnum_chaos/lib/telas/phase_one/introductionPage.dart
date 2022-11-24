import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:magnum_chaos/telas/phase_one/firstQuestionPage.dart';

class IntroductonPage extends StatefulWidget {
  const IntroductonPage({super.key});

  @override
  State<IntroductonPage> createState() => _IntroductonPageState();
}

class _IntroductonPageState extends State<IntroductonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aqui Inicia o App:"),
      ),
      body: Container(
        margin: EdgeInsets.all(100),
        child: ElevatedButton(
          child: Text("Contexto fase Um:"),
          onPressed: (){
            Navigator.push(
              context, 
              MaterialPageRoute(builder: ((context) => FirstQuestionPage()))
            );
          },
        ),
      ),
    );
  }
}