import 'package:flutter/material.dart';
import 'package:udacity_converter/ContainerMain.dart';

void main () => runApp(myAplication());

class myAplication extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Converter Udacity',
      home: ContainerMain(),
    );
  }
}