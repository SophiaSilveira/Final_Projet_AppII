//Eduardo - tela de inicio

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:magnum_chaos/telas/mapPage.dart';

class InitPage extends StatefulWidget {
  const InitPage({super.key});

  @override
  State<InitPage> createState() => _InitPageState();
}

class _InitPageState extends State<InitPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Página inicial:"),
      ),
      body: Container(
        margin: EdgeInsets.all(100),
        child: ElevatedButton(
          child: Text("Ir para a tela mapa"),
          onPressed: (){
            Navigator.push(
              context, 
              MaterialPageRoute(builder: ((context) => MapPage()))
            );
          },
        ),
      ),
    );
  }
}