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
    return Container(
      height: MediaQuery.of(context).size.height * 0.86,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Text('nada ainda, mas haverá!'),
      ),
    );
  }
}