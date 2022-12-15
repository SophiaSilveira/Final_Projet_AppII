import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:magnum_chaos/telas/phase_one/firstBadChoicePage.dart';
import 'package:magnum_chaos/telas/phase_one/thirdquestionpage.dart';

class SecondQuestionPage extends StatefulWidget {
  String userM, nameM;
  int phaseM;

  SecondQuestionPage(
      {required this.userM, required this.nameM, required this.phaseM});

  @override
  State<SecondQuestionPage> createState() => _SecondQuestionPageState();
}

class _SecondQuestionPageState extends State<SecondQuestionPage> {
  String Questiontwo =
      " Após segui-lo até a cabine que o Doutor chama de Tardis,"
      " ele inicia um falatório contando sobre a criação dos mundos e uma profecia onde você está envolvido,"
      " mas ele é interrompido por um ataque"
      " Então como último recurso ele diz que vai te manter seguro,"
      " mas você precisa escutar as suas instruções.";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.65,
            width: MediaQuery.of(context).size.width * 1,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/image/segunda.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
            alignment: Alignment.topRight,
            padding: EdgeInsets.all(30),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.35,
            width: MediaQuery.of(context).size.width * 1,
            decoration: BoxDecoration(
              color: Colors.black87,
            ),
            padding: EdgeInsets.all(5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  Questiontwo,
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
                  child: Text('Enfrentar o Doutor'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => FirstBadChoicePage(
                                  userM: widget.userM,
                                  nameM: widget.nameM,
                                  phaseM: widget.phaseM,
                                  badChoice: 2,
                                ))));
                  },
                ), //BUTON 1
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(174, 173, 4, 60),
                  ),
                  child: Text('Questionar o Doutor sobre a situação'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => ThirdQuestionPage(
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
