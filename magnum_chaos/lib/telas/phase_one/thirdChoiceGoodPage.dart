import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:magnum_chaos/telas/mapPage.dart';

class ThirdChoiceGoodPage extends StatefulWidget {
  const ThirdChoiceGoodPage({super.key});

  @override
  State<ThirdChoiceGoodPage> createState() => _ThirdChoiceGoodPageState();
}

class _ThirdChoiceGoodPageState extends State<ThirdChoiceGoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("passou"),
      ),
      body: Container(
        child: ElevatedButton(
          child: Text("segunda fase sem recompensa"),
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