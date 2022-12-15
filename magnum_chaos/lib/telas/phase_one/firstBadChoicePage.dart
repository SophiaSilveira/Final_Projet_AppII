import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:magnum_chaos/telas/mapPage.dart';
import 'package:magnum_chaos/telas/phase_one/firstquestionpage.dart';

class FirstBadChoicePage extends StatefulWidget {
  String userM, nameM;
  int phaseM, badChoice;
  FirstBadChoicePage(
      {required this.userM,
      required this.nameM,
      required this.phaseM,
      required this.badChoice});

  @override
  State<FirstBadChoicePage> createState() => _FirstBadChoicePageState();
}

class _FirstBadChoicePageState extends State<FirstBadChoicePage> {
  setText() {
    if (widget.badChoice == 1) {
      return firstC();
    } else if (widget.badChoice == 2) {
      return secondC();
    } else {
      return thirdC();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.8,
            width: MediaQuery.of(context).size.width * 1,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/image/badquestion.png'),
                fit: BoxFit.fill,
              ),
            ),
            alignment: Alignment.topRight,
            padding: EdgeInsets.all(30),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(131, 45, 54, 114), // Background color
            ),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width * 1,
              alignment: Alignment.center,
              padding: EdgeInsets.all(30),
              child: setText(),
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => FirstQuestionPage(
                          userM: widget.userM,
                          nameM: widget.nameM,
                          phaseM: widget.phaseM))));
            },
          ),
        ],
      ),
    );
  }

  Text firstC() {
    return Text(
      "Magnum Chaos  te acha sozinho, você ainda não sabe usar o poder e acaba morrendo. Inicie de novo o jogo!",
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.white,
        decoration: TextDecoration.none,
      ),
    );
  }

  Text secondC() {
    return Text(
      "Você não deixou o Doutor falar e o agride… Vocês morreram.!",
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.white,
        decoration: TextDecoration.none,
      ),
    );
  }

  Text thirdC() {
    return Text(
      "Os irmãos winchester acabam atirando em você… você morreu!",
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.white,
        decoration: TextDecoration.none,
      ),
    );
  }
}
