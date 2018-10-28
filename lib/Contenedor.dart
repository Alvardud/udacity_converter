import 'package:flutter/material.dart';

//var text1='';

class containerText extends StatefulWidget{

  var _text1='';
  var _text2='';

  containerText(String a){
    _text1=a;
    //_text2=b;
  }
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return containerTextState(_text1);
  }
}

class containerTextState extends State<containerText>{
  @override

  var _text1='';
  var _text2='';

  containerTextState(String a){
    _text1=a;
   // _text2=b;
  }

  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
          child:Column(
            children: <Widget>[
              Container(
                child:TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                          //color: Colors.redAccent,
                          style: BorderStyle.solid
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    //hintText: _text2,
                    labelText: _text1,
                    labelStyle: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
    );
  }
}

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
      child: DropdownButton(
        items: listDrop, onChanged: null,
      ),
    );
  }

  Widget _createArrow(Widget li,Widget lo){
    return Center(
      child: Container(
        margin: EdgeInsets.only(bottom: 10.0),
        width: 50.0,
        height: 50.0,
        child: IconButton(icon: Icon(Icons.compare_arrows), onPressed: null,
          iconSize: 40.0,
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    // TODO: implement build
    loadData();

    Widget layoutInput;
    Widget layoutOutput;
    Widget flecha;

    return Container(
      padding:EdgeInsets.all(30.0),
      child: ListView(
        children: <Widget>[
          layoutInput=containerText("Input"),
          _createDropDown(),
          flecha=_createArrow(layoutInput,layoutOutput),
          layoutOutput=containerText("Output"),
          _createDropDown(),
        ],
      ),
    );
  }

}