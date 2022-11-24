import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:magnum_chaos/telas/mapPage.dart';

class ThirdChoiceWinsPage extends StatefulWidget {
  const ThirdChoiceWinsPage({super.key});

  @override
  State<ThirdChoiceWinsPage> createState() => _ThirdChoiceWinsPageState();
}

class _ThirdChoiceWinsPageState extends State<ThirdChoiceWinsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("venceu"),
      ),
      body: Container(
        child: ElevatedButton(
          child: Text("segunda fase com recompensa"),
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