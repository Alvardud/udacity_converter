import 'package:flutter/material.dart';

var _categoryName='Cake';
var _categoryIcon='';
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

  var _categoryName='Cake';
  var _categoryIcon='';

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
      //onTap: (){print('Presionado');},
    );
  }
}