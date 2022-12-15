import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:magnum_chaos/telas/phase_one/firstBadChoicePage.dart';
import 'package:magnum_chaos/telas/phase_one/secondquestionpage.dart';

class FirstQuestionPage extends StatefulWidget {
  String userM, nameM;
  int phaseM;
  FirstQuestionPage(
      {required this.userM, required this.nameM, required this.phaseM});

  @override
  State<FirstQuestionPage> createState() => _FirstQuestionPageState();
}

class _FirstQuestionPageState extends State<FirstQuestionPage> {
  String QuestionOne =
      "Você retorna da escola e ao chegar em casa escuta uma espécie de sirene esquisita,"
      "ao investigar vê algo como uma cabine azul de onde sai um homem que usa um sobretudo marrom."
      "Ele aponta uma lanterna azul para você que parece te escanear e diz"
      "Finalmente te encontrei! Vamos rápido pois não temos muito tempo, pode me chamar de Doutor";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.5,
            width: MediaQuery.of(context).size.width * 1,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/image/cena_um.png'),
                fit: BoxFit.cover,
              ),
            ),
            alignment: Alignment.topRight,
            padding: EdgeInsets.all(5),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.5,
            width: MediaQuery.of(context).size.width * 1,
            decoration: BoxDecoration(
              color: Colors.black87,
            ),
            padding: EdgeInsets.all(18),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  QuestionOne,
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
                  child: Text('Fugir.'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => FirstBadChoicePage(
                                  userM: widget.userM,
                                  nameM: widget.nameM,
                                  phaseM: widget.phaseM,
                                  badChoice: 1,
                                ))));
                  },
                ), //BUTON 1
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(174, 173, 4, 60),
                  ),
                  child: Text('Seguir este homem.'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => SecondQuestionPage(
                                  userM: widget.userM,
                                  nameM: widget.nameM,
                                  phaseM: widget.phaseM,
                                ))));
                  },
                ), //BUTTON2
              ],
            ),
          ),
        ],
      ),
    );
  }
}
