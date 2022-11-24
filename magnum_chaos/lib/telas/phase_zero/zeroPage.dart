//Eduardo fase zero ou HISTÓRIA
// talvez precise de mais um arquivo, coloque dentro da pasta

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ZeroPage extends StatefulWidget {
  const ZeroPage({super.key});

  @override
  State<ZeroPage> createState() => _ZeroPageState();
}

class _ZeroPageState extends State<ZeroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text("Página da fase zero:"),
      ),
      body: Container(
        margin: EdgeInsets.all(100),
        child: Text("nada ainda, mas há de haver algum dia")
      ),
    );
  }
}