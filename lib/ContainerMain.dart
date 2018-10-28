import 'package:flutter/material.dart';
import 'package:udacity_converter/Category.dart';

//const _categoryName='Cake';
//const _categoryIcon=Icons.cake;
const _categoryColor=Colors.green;
const _largo=100.0;
const _radio=50.0;

class ContainerMain extends StatelessWidget{

  const ContainerMain();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        title:Text(
          'App Converter',
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.w300,
            fontSize: 20.0,
          ),
        ),
        leading: Icon(Icons.close,
        color: Colors.black87,),
        elevation: 1.0,
        backgroundColor: Colors.green[100],
      ),
      body: Material(
        borderRadius: BorderRadius.circular(50.0),
        child:Container(
          child:listCategory(),
        ),
      ),
    );
  }
}

class listCategory extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.all(5.0),
      child: ListView(
        children: <Widget>[
          Category('Area',"assets/icons/area.png"),
          Category('Currency',"assets/icons/currency.png"),
          Category('Digital Storage',"assets/icons/digital_storage.png"),
          Category('Length',"assets/icons/length.png"),
          Category('Mass',"assets/icons/mass.png"),
          Category('Power',"assets/icons/power.png"),
          Category('Time',"assets/icons/time.png"),
          Category('Volume',"assets/icons/volume.png"),
        ],
      ),
    );
  }
}