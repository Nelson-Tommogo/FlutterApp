import 'package:flutter/material.dart';
import 'package:simpleapp/Color/colors.dart';

void main() => runApp(MaterialApp(
    home:Home()
));

  class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context){
  return Scaffold(
    appBar: AppBar(
      title: Text('SmartMavuno'),
      centerTitle: true,
      backgroundColor: ColorList.grey,
    ),
    body: Center(
      child: Image(
        image: AssetImage('images/trial.jpg'),
      ),
    ),

    floatingActionButton: FloatingActionButton(
      onPressed: () {
        // Add your onPressed code here!
      },
      child: Text("Click"),
      backgroundColor: ColorList.grey,
    ),
  );
  }

  }

