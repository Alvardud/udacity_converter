import 'package:flutter/material.dart';
import 'package:udacity_converter/Contenedor.dart';

void main()=>runApp(new ConverterLayout(Colors.tealAccent,Colors.blueGrey,"Time"));

const _colorTextos=Colors.black87;
var _colorPrincipal=Colors.white;
var _colorText=Colors.white;
var _title='';

class ConverterLayout extends StatelessWidget{
  @override

  ConverterLayout(var cp,var ct,var t){
    _colorPrincipal=cp;
    _colorText=ct;
    _title=t;
  }

  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Scaffold(
        appBar: AppBar(
          title:Text(
            _title,
            style: TextStyle(
              color: _colorTextos,
              fontWeight: FontWeight.w400,
              fontSize: 20.0,
            ),
          ),
          centerTitle: true,
          leading: Icon(Icons.arrow_back,
            color: _colorTextos,),
          elevation: 1.0,
          backgroundColor: _colorPrincipal,
        ),
       body: Contenedor(),
      ),
    );
  }
}