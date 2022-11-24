import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:magnum_chaos/telas/mapPage.dart';
import 'package:magnum_chaos/telas/phase_one/firstQuestionPage.dart';

class ThirdBadChoicePage extends StatefulWidget {
  const ThirdBadChoicePage({super.key});

  @override
  State<ThirdBadChoicePage> createState() => _ThirdBadChoicePageState();
}

class _ThirdBadChoicePageState extends State<ThirdBadChoicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        title: Text("Se fodeu 3"),
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