import 'package:flutter/material.dart';
import 'package:simpleapp/Color/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(
    title: Text('SmartMavuno'),
      centerTitle: true,
    ),
    body: Center(
      child: Text('Smartmavuno Mobile'),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () {
        // Add your onPressed code here!
      },
      child: Icon(Icons.navigation),
      backgroundColor: ColorList.blue,
    ),
  ),

  )
);
