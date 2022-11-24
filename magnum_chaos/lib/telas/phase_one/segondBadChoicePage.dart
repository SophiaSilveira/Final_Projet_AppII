import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:magnum_chaos/telas/phase_one/firstQuestionPage.dart';

class SecondBadChoicePage extends StatefulWidget {
  const SecondBadChoicePage({super.key});

  @override
  State<SecondBadChoicePage> createState() => _SecondBadChoicePageState();
}

class _SecondBadChoicePageState extends State<SecondBadChoicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Se fodeu 2"),
      ),
      body: Container(
        child: ElevatedButton(
          child: Text("Ir para a tela Primeira escolha"),
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