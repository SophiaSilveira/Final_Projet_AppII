//Sophia tela mapa

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:magnum_chaos/telas/gainsPage.dart';
import 'package:magnum_chaos/telas/phase_one/introductionPage.dart';
import 'package:magnum_chaos/telas/phase_zero/zeroPage.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela Mapa:"),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(50),
            child: ElevatedButton(
              child: Text("Ir para a tela de conquistas"),
              onPressed: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: ((context) => GainsPage()))
                );
              },
            ),
          ),
          Container(
            margin: EdgeInsets.all(50),
            child: ElevatedButton(
              child: Text("Ir para a tela da fase zero"),
              onPressed: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: ((context) => ZeroPage()))
                );
              },
            ),
          ),
          Container(
            margin: EdgeInsets.all(50),
            child: ElevatedButton(
              child: Text("Ir para a tela da fase Um"),
              onPressed: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: ((context) => IntroductonPage()))
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}