import 'package:flutter/material.dart';
import 'package:to_do_list/Item.dart';
import 'package:to_do_list/DetailScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'List item'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  final items = List<Item>.generate(20, (i)=>Item('Todo $i',"Basic description of todo $i"));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView.builder(itemCount: items.length, itemBuilder: (context,index){
          return ListTile(
            title: Text(items[index].title),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context)=> DetailScreen(item : items[index]),
                ),
              );
            }
          );
        }),
      ),
    );
  }
}
