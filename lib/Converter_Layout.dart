import 'package:flutter/material.dart';
import 'package:udacity_converter/Contenedor.dart';

//void main()=>runApp(new ConverterLayout(Colors.tealAccent,Colors.blueGrey,"Time"));

const _colorTextos=Colors.black87;
//var _colorPrincipal=Colors.white;
//var _colorText=Colors.white;
//var _title='';

class ConverterLayout extends StatelessWidget{
  @override

  var _colorPrincipal;
  var _colorTextos;
  var _title;

  ConverterLayout(var cp,var ct,var t){
    _colorPrincipal=cp;
    _colorTextos=ct;
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
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontSize: 20.0,
            ),
          ),
          centerTitle: true,
          leading: IconButton(// color: _colorTextos,
            icon: Icon(Icons.arrow_back),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
          elevation: 1.0,
          backgroundColor: _colorPrincipal,
        ),
       body: Contenedor(),
      ),
    );
  }
}