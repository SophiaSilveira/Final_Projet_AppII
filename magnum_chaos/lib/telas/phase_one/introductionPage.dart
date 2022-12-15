import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:magnum_chaos/telas/phase_one/firstquestionpage.dart';

class IntroductonPage extends StatefulWidget {
  String userM, nameM;
  int phaseM;
  IntroductonPage(
      {required this.userM, required this.nameM, required this.phaseM});

  @override
  State<IntroductonPage> createState() => _IntroductonPageState();
}

class _IntroductonPageState extends State<IntroductonPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Color.fromARGB(131, 45, 54, 114), // Background color
        ),
        child: Container(
          width: MediaQuery.of(context).size.width * 1,
          height: MediaQuery.of(context).size.height * 1,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/image/contexto.jpg'),
              fit: BoxFit.fill,
            ),
          ),
        ),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: ((context) => FirstQuestionPage(
                        userM: widget.userM,
                        nameM: widget.nameM,
                        phaseM: widget.phaseM,
                      ))));
        },
      ),
    );
  }
}
