//Sophia tela de Conquistas/ganhos

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class GainsPage extends StatefulWidget {
  const GainsPage({super.key});

  @override
  State<GainsPage> createState() => _GainsPageState();
}

class _GainsPageState extends State<GainsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text("Página de conquistas:"),
      ),
      body: Container(
        margin: EdgeInsets.all(100),
        child: Text("Nada ainda")
      ),
    );
  }
}