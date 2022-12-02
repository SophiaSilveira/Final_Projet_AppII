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
    return Container(
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/image/mapa.jpeg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text("Tela Mapa:"),
          automaticallyImplyLeading: false,
          toolbarHeight: 80,
          centerTitle: true,
          backgroundColor: Colors.black12,//Color(0xff0A6D92),
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
        body: fases(context),
      ),
    );
  }

  Column fases(BuildContext context) {
    bool _isButtonDisabled = false;
    return Column(
        children: [       
          Container(
            height: MediaQuery.of(context).size.height * 0.3,
            margin: EdgeInsets.only(top: 80, left: 100),
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
          height: MediaQuery.of(context).size.height * 0.3,
          margin: EdgeInsets.only(top: 80, right: 80),
            child: ElevatedButton(
              child: _isButtonDisabled ? null : const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/logo/logoRedondo.png'),
              ),
              onPressed: _isButtonDisabled ? null : (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: ((context) => const IntroductonPage()))
                );
              },
            ),
          ),
        ],
      );
  }
}

