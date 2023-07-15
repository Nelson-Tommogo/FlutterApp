import 'package:flutter/material.dart';
import 'package:simpleapp/Color/colors.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('SmartMavuno App'),
        centerTitle: true,
        backgroundColor: ColorList.grey,
      ),
      body: Center(
        child: Text(
          "SmartMavuno",
          style: TextStyle(fontSize: 40,
          fontWeight: FontWeight.bold,
          letterSpacing: 12,
          color: ColorList.red),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        child: Icon(Icons.navigation),
        backgroundColor: ColorList.grey,
      ),
    ),
  ));
  class test extends StatelessWidget{
  @override
  Widget build(BuildContext context){
  return container();
  }
  }
}
