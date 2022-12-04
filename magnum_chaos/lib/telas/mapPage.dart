//Sophia tela mapa

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:magnum_chaos/telas/gainsPage.dart';
import 'package:magnum_chaos/telas/phase_one/introductionPage.dart';
import 'package:magnum_chaos/telas/phase_zero/zeroPage.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart'
    show showBarModalBottomSheet;

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
          toolbarHeight: 100,
          centerTitle: true,
          backgroundColor: Colors.black12, //Color(0xff0A6D92),
          actions: [
            IconButton(
              icon: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/logo/logoRedondo.png'),
              ),
              iconSize: 65,

              //color: Colors.white,
              /*const Icon(
                Icons.account_circle_rounded,
                color: Colors.white,
              ),*/
              onPressed: () {
                showBarModalBottomSheet(
                    context: context, builder: (context) => GainsPage());
              },
            ),
          ],
        ),
        body: Container(
          alignment: Alignment.center,
          child: fases(context),
          ), 
      ),
    );
  }

  Column fases(BuildContext context) {
    bool _isButtonDisabled = false;
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 25, right: 200),
          height: MediaQuery.of(context).size.height * 0.25,
          width: MediaQuery.of(context).size.width * 0.25,
          child: IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => const ZeroPage())));
            },
            icon: CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('assets/image/portal_preto.png'),
              backgroundColor: Colors.transparent,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20,left: 200),
          height: MediaQuery.of(context).size.height * 0.25,
          width: MediaQuery.of(context).size.width * 0.25,
          child: _isButtonDisabled ? null : IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => const IntroductonPage())));
            },
            icon: CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('assets/image/portal_quadrado.png'),
              backgroundColor: Colors.transparent,
            ),
          ),
        ),
      ],
    );
  }
}

/*ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.transparent,
              onPrimary: Colors.transparent,
              
            ),
            onPressed: (){
              Navigator.push(
                context, 
                MaterialPageRoute(builder: ((context) => const IntroductonPage()))
              );
            },
            child: const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/logo/logoRedondo_700.png'),
            ),
          ),*/

