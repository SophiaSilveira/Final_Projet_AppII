import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:magnum_chaos/telas/phase_one/thirdBadChoicePage.dart';
import 'package:magnum_chaos/telas/phase_one/thirdChoiceGoodPage.dart';
import 'package:magnum_chaos/telas/phase_one/thirdChoiceWinsPage.dart';

class ThirdQuestionPage extends StatefulWidget {
  const ThirdQuestionPage({super.key});

  @override
  State<ThirdQuestionPage> createState() => _ThirdQuestionPageState();
}

class _ThirdQuestionPageState extends State<ThirdQuestionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        title: Text("Página da terceira pergunta:"),
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
                  MaterialPageRoute(builder: ((context) => ThirdBadChoicePage()))
                );
              },
            ),
          ),
          Container(
            margin: EdgeInsets.all(50),
            child: ElevatedButton(
              child: Text("escolha vencedora"),
              onPressed: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: ((context) => ThirdChoiceWinsPage()))
                );
              },
            ),
          ),
          Container(
            margin: EdgeInsets.all(50),
            child: ElevatedButton(
              child: Text("escolha media"),
              onPressed: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: ((context) => ThirdChoiceGoodPage()))
                );
              },
            ),
          ),
        ],
      )
    );
  }
}