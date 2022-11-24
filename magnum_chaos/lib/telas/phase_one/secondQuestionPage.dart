import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:magnum_chaos/telas/phase_one/segondBadChoicePage.dart';
import 'package:magnum_chaos/telas/phase_one/thirdQuestionPage.dart';

class SecondQuestionPage extends StatefulWidget {
  const SecondQuestionPage({super.key});

  @override
  State<SecondQuestionPage> createState() => _SecondQuestionPageState();
}

class _SecondQuestionPageState extends State<SecondQuestionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        title: Text("Página da segunda pergunta:"),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(50),
            child: ElevatedButton(
              child: Text("escolha ruim"),
              onPressed: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: ((context) => SecondBadChoicePage()))
                );
              },
            ),
          ),
          Container(
            margin: EdgeInsets.all(50),
            child: ElevatedButton(
              child: Text("escolha boa"),
              onPressed: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: ((context) => ThirdQuestionPage()))
                );
              },
            ),
          ),
        ],
      )
    );
  }
}