import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:magnum_chaos/telas/mapPage.dart';

class InitPage extends StatefulWidget {
  const InitPage({super.key});
  @override
  State<InitPage> createState() => _InitPageState();
}

class _InitPageState extends State<InitPage> {
  setFullscreen(){
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: [],
    );
  }

  final TextEditingController _nome = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 16, 80, 109),
                Color.fromARGB(255, 88, 6, 58),
                Color.fromARGB(255, 168, 7, 109),
                Color.fromARGB(255, 114, 8, 8),
              ],
            )
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 50, right: 50, top: 50, bottom: 30),
            child: Column(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  width: 200,
                  child: Image.asset("assets/logo/logoRedondo.png"),
                ),
               TextField(
                  keyboardType: TextInputType.name,
                  controller: _nome,
                  decoration: InputDecoration(
                    labelText: 'User',
                    border: OutlineInputBorder(),
                    fillColor: Colors.white,
                  ),
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white
                  ),
                ),
              
              ElevatedButton(
                onPressed: () {
                  setFullscreen();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => MapPage(user: 'assets/logo/logoRedondo.png', name: _nome.text, phase: 0,))));
                }, 
                style: 
                ElevatedButton.styleFrom(
                  primary: Colors.purple
                ),
                child: const Text(
                  'Login',
                  style: TextStyle(fontSize: 20),
                  ),
                
                ),
            Container(
              width: 150,
              child: Image.asset("assets/logo/logoempresa.png"),
              ),
            ],
            ),
          ),
        ),
    ),
    );
  }
}