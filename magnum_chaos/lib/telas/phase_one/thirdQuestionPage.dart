import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:magnum_chaos/telas/phase_one/firstBadChoicePage.dart';
import 'package:magnum_chaos/telas/phase_one/thirdChoiceGoodPage.dart';
import 'package:magnum_chaos/telas/phase_one/thirdChoiceWinsPage.dart';

class ThirdQuestionPage extends StatefulWidget {
  String userM, nameM;
  int phaseM;

  ThirdQuestionPage(
      {required this.userM, required this.nameM, required this.phaseM});

  @override
  State<ThirdQuestionPage> createState() => _ThirdQuestionPageState();
}

class _ThirdQuestionPageState extends State<ThirdQuestionPage> {
  String QuestionThree =
      "O Doutor explica que há um grande mal atrás de você, e que irá enganá-lo, mas "
      "para isso você precisa se manter seguro e esperar por ele, "
      "entretanto ao te teletransportar o Doutor comete um erro e você acaba em um Bunker"
      "com duas figuras segurando armas em sua direção.";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.6,
            width: MediaQuery.of(context).size.width * 1,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/image/bunker.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            alignment: Alignment.topRight,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.width * 1,
            decoration: BoxDecoration(
              color: Colors.black87,
            ),
            padding: EdgeInsets.all(5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  QuestionThree,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w200,
                    color: Colors.white,
                    decoration: TextDecoration.none,
                  ),
                ), //TEXTO
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(174, 173, 4, 60),
                  ),
                  child: Text('Pegar uma arma para se defender'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => FirstBadChoicePage(
                                  userM: widget.userM,
                                  nameM: widget.nameM,
                                  phaseM: widget.phaseM,
                                  badChoice: 3,
                                ))));
                  },
                ), //BUTON 1
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(174, 173, 4, 60),
                    ),
                    child: Text('Levantar as mãos e dizer que vem em paz'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => ThirdChoiceWinsPage(
                                  userM: widget.userM,
                                  phaseM: widget.phaseM,
                                  nameM: widget.nameM,
                                ))),
                      );
                    }), //BUTTON2
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(174, 173, 4, 60),
                  ),
                  child: Text('Olhar para o lado e perguntar onde você está'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => ThirdChoiceGoodPage(
                                  userM: widget.userM,
                                  nameM: widget.nameM,
                                  phaseM: widget.phaseM,
                                ))));
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
