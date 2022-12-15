import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:magnum_chaos/telas/mapPage.dart';

class ThirdChoiceWinsPage extends StatefulWidget {
  String userM, nameM;
  int phaseM;

  ThirdChoiceWinsPage(
      {required this.userM, required this.nameM, required this.phaseM});

  @override
  State<ThirdChoiceWinsPage> createState() => _ThirdChoiceWinsPageState();
}

class _ThirdChoiceWinsPageState extends State<ThirdChoiceWinsPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        Container(
          padding: const EdgeInsets.all(30),
          height: MediaQuery.of(context).size.height * 0.8,
          width: MediaQuery.of(context).size.width * 1,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/image/vencedora.jpg'),
              fit: BoxFit.fill,
            ),
          ),
          child: Container(
            alignment: Alignment.bottomCenter,
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.width * 0.40,
            child: FloatingActionButton.extended(
              backgroundColor: Color.fromARGB(174, 173, 4, 60),
              label: const Text('Ir para o mapa'),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => MapPage(
                            user: widget.userM,
                            name: widget.nameM,
                            phase: 2))));
              },
            ),
          ),
        ),
        Container(
          color: Color.fromARGB(255, 100, 0, 90),
          padding: const EdgeInsets.all(15),
          height: MediaQuery.of(context).size.height * 0.2,
          width: MediaQuery.of(context).size.width * 1,
          child: Text(
            'Sam e Dean ainda estão desconfiados de você, e você ainda não tem a total confiança deles.'
            ' Porém eles decidem lhe ouvir e lhe ajudar. ',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w200,
              color: Colors.white,
              decoration: TextDecoration.none,
            ),
          ),
        ),
      ]),
    );
  }
}
