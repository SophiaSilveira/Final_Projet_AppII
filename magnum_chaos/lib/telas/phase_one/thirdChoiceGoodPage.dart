import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:magnum_chaos/telas/mapPage.dart';

class ThirdChoiceGoodPage extends StatefulWidget {
  String userM, nameM;
  int phaseM;

  ThirdChoiceGoodPage({required this.userM, required this.nameM, required this.phaseM});

  @override
  State<ThirdChoiceGoodPage> createState() => _ThirdChoiceGoodPageState();
}

class _ThirdChoiceGoodPageState extends State<ThirdChoiceGoodPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(30),
            height: MediaQuery.of(context).size.height * 0.85,
            width: MediaQuery.of(context).size.width * 1,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/image/escolhamedia.jpg'),
                 fit: BoxFit.fill,
              ),
            ),
            child: Container(
              alignment: Alignment.bottomCenter,
              height: MediaQuery.of(context).size.height * 0.40,
              width: MediaQuery.of(context).size.width * 0.40,
              child:FloatingActionButton.extended(  
                  backgroundColor: Color.fromARGB(174, 173, 4, 60),             
                  label: const Text('Ir para o mapa'),
                  onPressed: (){
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: ((context) => MapPage(user: widget.userM, name: widget.nameM, phase: widget.phaseM,)))
                  );
                },
              ),
            ),
          ),
          Container(
           color: Color.fromARGB(255, 100, 0, 90),
            padding: const EdgeInsets.all(15),
            height: MediaQuery.of(context).size.height * 0.15,
            width: MediaQuery.of(context).size.width * 1,
            child: Text(
              'Um dos irmãos WInchester acerta um grande soco em seu rosto, afinal não sabe de onde você veio.'
              ' Depois que você acorda, eles decidem lhe ouvir. ',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w200,
                color: Colors.white,
                decoration: TextDecoration.none,
              ),
            ),
          ),
        ]
      ),
    );
  }
}