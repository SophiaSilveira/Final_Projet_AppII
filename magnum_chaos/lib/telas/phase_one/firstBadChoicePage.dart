import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:magnum_chaos/telas/mapPage.dart';
import 'package:magnum_chaos/telas/phase_one/firstQuestionPage.dart';

class FirstBadChoicePage extends StatefulWidget {
  const FirstBadChoicePage({super.key});

  @override
  State<FirstBadChoicePage> createState() => _FirstBadChoicePageState();
}

class _FirstBadChoicePageState extends State<FirstBadChoicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Se fodeu 1"),
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