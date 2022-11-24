import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:magnum_chaos/telas/phase_one/firstBadChoicePage.dart';
import 'package:magnum_chaos/telas/phase_one/secondQuestionPage.dart';

class FirstQuestionPage extends StatefulWidget {
  const FirstQuestionPage({super.key});

  @override
  State<FirstQuestionPage> createState() => _FirstQuestionPageState();
}

class _FirstQuestionPageState extends State<FirstQuestionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Página da primeira pergunta:"),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(50),
            child: ElevatedButton(
              child: Text("Ir para a segunda pergunta"),
              onPressed: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: ((context) => SecondQuestionPage()))
                );
              },
            ),
          ),
          Container(
            margin: EdgeInsets.all(50),
            child: ElevatedButton(
              child: Text("escolha ruim"),
              onPressed: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: ((context) =>FirstBadChoicePage()))
                );
              },
            ),
          ),
        ],
      )
    );
  }
}