import 'package:flutter/material.dart';



class Contenedor extends StatelessWidget{
  @override

  List<DropdownMenuItem<int>> listDrop=[];

  void loadData(){
    listDrop.add(new DropdownMenuItem(
      child: Text(
        'Item 1'),
      value: 1,
    ));
    listDrop.add(new DropdownMenuItem(
      child: Text(
          'Item 2'),
      value: 2,
    ));
    listDrop.add(new DropdownMenuItem(
      child: Text(
          'Item 3'),
      value: 3,
    ));
    listDrop.add(new DropdownMenuItem(
      child: Text(
          'Item 4'),
      value: 4,
    ));
  }

  Widget _createDropDown(){
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
      child: DropdownButton(items: listDrop, onChanged: null),
    );
  }

  Widget build(BuildContext context) {
    // TODO: implement build
    loadData();
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15.0,horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          TextField(
            keyboardType: TextInputType.number,
          ),
          _createDropDown(),
        ],
      ),
    );
  }
}