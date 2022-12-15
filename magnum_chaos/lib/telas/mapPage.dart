import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:magnum_chaos/telas/gainsPage.dart';
import 'package:magnum_chaos/telas/phase_one/introductionPage.dart';
import 'package:magnum_chaos/telas/phase_zero/zeropage.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart'
    show showBarModalBottomSheet;

class MapPage extends StatefulWidget {
  
  String user, name;
  int phase;

  MapPage({required this.user, required this.name, required this.phase});

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
          image: AssetImage("assets/image/mapa.jpeg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title:  Text('${widget.name}! \nDerrote Magnum Chaos.'),
          titleTextStyle: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          automaticallyImplyLeading: false,
          toolbarHeight: 100,
          centerTitle: true,
          backgroundColor: Colors.black12, //Color(0xff0A6D92),
          actions: [
            IconButton(
              icon:  CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage(widget.user),
                backgroundColor: Colors.transparent,
              ),
              iconSize: 100,
              onPressed: () {
                showBarModalBottomSheet(
                  context: context, builder: (context) => GainsPage(nameM: widget.name, phaseM: widget.phase,));
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
                      builder: ((context) => ZeroPage(nameM: widget.name, userM: widget.user, phaseM: widget.phase,))));
            },
            icon: const CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('assets/image/portal_preto.png'),
              backgroundColor: Colors.transparent,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 20,left: 200),
          height: MediaQuery.of(context).size.height * 0.25,
          width: MediaQuery.of(context).size.width * 0.25,
          // ignore: dead_code
          child: widget.phase < 1 ? null: IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => IntroductonPage(userM: widget.user, nameM: widget.name, phaseM: widget.phase,))));
            },
            icon: const CircleAvatar(
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

