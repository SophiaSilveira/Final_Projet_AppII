import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:magnum_chaos/telas/mapPage.dart';

class GainsPage extends StatefulWidget {

  int phaseM;
  String nameM;

  GainsPage({required this.nameM, required this.phaseM});

  @override
  State<GainsPage> createState() => _GainsPageState();
}

class _GainsPageState extends State<GainsPage> {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.86,
      width: MediaQuery.of(context).size.width * 1,
      // ignore: prefer_const_constructors
      decoration: BoxDecoration(
        //color: Color.fromARGB(255, 0, 0, 0),
        // ignore: prefer_const_constructors
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
           /* Color.fromARGB(255, 51, 76, 186),
            Color.fromARGB(255, 102, 42, 207),
            Color.fromARGB(221, 234, 52, 197),
            Color.fromARGB(221, 209, 37, 74)*/
            Color.fromARGB(255, 16, 80, 109),
            Color.fromARGB(255, 88, 6, 58),
            Color.fromARGB(255, 114, 8, 8)
          ],
        )
      ),
      child: CustomScrollView(
        shrinkWrap: true,
        slivers: <Widget>[
          SliverPadding(
            padding: const EdgeInsets.all(20),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height * 0.06,
                    width: MediaQuery.of(context).size.width * 1,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 242, 236, 236),
                      borderRadius: BorderRadius.only(
                       topLeft: Radius.circular(25),
                       topRight: Radius.circular(25),
                      ),
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      "Conquistas",
                      style: TextStyle(
                        fontSize: 35,
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.07,
                    width: MediaQuery.of(context).size.width * 1,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 233, 228, 234),
                      borderRadius: BorderRadius.only(
                       bottomLeft: Radius.circular(25),
                       bottomRight: Radius.circular(25),
                      ),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "Termine as fases para liberar um novo avatar!",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.deepPurpleAccent,
                        //fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 25),
                    height: MediaQuery.of(context).size.height * 0.25,
                    width: MediaQuery.of(context).size.width * 0.25,
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => MapPage(user: 'assets/logo/logoRedondo.png', name: widget.nameM, phase: widget.phaseM,))));
                      },
                      icon: CircleAvatar(
                        radius: 90,
                        backgroundImage:
                            AssetImage('assets/logo/logoRedondo.png'),
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 25),
                    height: MediaQuery.of(context).size.height * 0.25,
                    width: MediaQuery.of(context).size.width * 0.25,
                    child: widget.phaseM < 2 ? noIcon(context) : IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => MapPage(user: 'assets/image/userDoctor.png', name: widget.nameM, phase: widget.phaseM,))));
                      },
                      icon: CircleAvatar(
                        radius: 180,
                        backgroundImage:
                            AssetImage('assets/image/userDoctor.png'),
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 25),
                    height: MediaQuery.of(context).size.height * 0.25,
                    width: MediaQuery.of(context).size.width * 0.25,
                    child: widget.phaseM < 3 ? noIcon(context) : IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => MapPage(user: 'assets/image/portal_preto.png', name: widget.nameM, phase: widget.phaseM,))));
                      },
                      icon: CircleAvatar(
                        radius: 100,
                        backgroundImage:
                            AssetImage('assets/image/portal_preto.png'),
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container noIcon(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 25),
      height: MediaQuery.of(context).size.height * 0.25,
      width: MediaQuery.of(context).size.width * 0.25,
      child: IconButton(
        onPressed: () {
        },
        icon: CircleAvatar(
          radius: 100,
          backgroundColor: Colors.black,
        ),
      ),
    );
  }
}

