import 'package:flutter/material.dart';
import 'package:to_do_list/Item.dart';

class DetailScreen extends StatelessWidget
{
  final Item item;

  DetailScreen({Key key, @required this.item}) : super(key:key);

  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(title:Text(item.title)),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child : Text(item.description),
      )
    );

  }

}