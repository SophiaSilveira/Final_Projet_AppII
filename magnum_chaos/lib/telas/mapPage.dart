//Sophia tela mapa

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:magnum_chaos/telas/gainsPage.dart';
import 'package:magnum_chaos/telas/phase_one/introductionPage.dart';
import 'package:magnum_chaos/telas/phase_zero/zeroPage.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart' show showBarModalBottomSheet;



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
        toolbarHeight: 80,
        centerTitle: true,
        backgroundColor: Color(0xff0A6D92),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.account_circle_rounded,
              color: Colors.white,
            ),
            onPressed: () {
              showBarModalBottomSheet(context: context, builder: (context) => GainsPage());
            },
          ),
        ],
      ),
      body: Column(
        children: [
          
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


//tela mapa
/*Container(
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
          ),*/