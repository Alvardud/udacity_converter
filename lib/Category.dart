import 'package:flutter/material.dart';
import 'package:udacity_converter/Converter_Layout.dart';

//var _categoryName='Cake';
//var _categoryIcon='';
const _categoryColor=Colors.green;
const _largo=100.0;
const _radio=50.0;

class constructorImagen extends StatelessWidget{
  @override

  var _categoryIcon='';

  constructorImagen(var x){
    _categoryIcon=x;
  }

  Widget build(BuildContext context) {
    // TODO: implement build
    var assetsImage = new AssetImage(_categoryIcon);
    var logo=new Image(image: assetsImage, width: 60.0,height: 60.0);
    return new Container(child: logo);
  }

}


class Category extends StatelessWidget{

  var _colorAppBar;
  var _colorTextos;
  var _titulo;
  var _categoryName='Cake';
  var _categoryIcon='';
  Widget layoutConverter;

  Category(var n,var i){
    _categoryName=n;
    _categoryIcon=i;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      child: Row(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(16.0),
            child: constructorImagen(_categoryIcon),
          ),
          Text(_categoryName,
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.w400,
            ),),
        ],
      ),
      onTap:(){
        switch(_categoryName){
          case "Area":{
            _colorAppBar=Colors.orange[200];
            break;
          }
          case "Currency":{
            _colorAppBar=Colors.teal[200];
            break;
          }
          case "Digital Storage":{
            _colorAppBar=Colors.red[200];
            break;
          }
          case "Lenght":{
            _colorAppBar=Colors.yellow[200];
            break;
          }
          case "Mass":{
            _colorAppBar=Colors.indigo[200];
            break;
          }
          case "Power":{
            _colorAppBar=Colors.purple[200];
            break;
          }
          case "Time":{
            _colorAppBar=Colors.brown[200];
            break;
          }
          case "Volume":{
            _colorAppBar=Colors.lime[200];
            break;
          }
          default:{
            _colorAppBar=Colors.pink[200];
            break;
          }
        }
        layoutConverter=new ConverterLayout(_colorAppBar,Colors.blueGrey,_categoryName);
        Navigator.push(context, MaterialPageRoute(
          builder:(context)=>layoutConverter,
        ));
      },
    );
  }
}