import 'package:flutter/material.dart';

class Test extends StatelessWidget{
  var arrContent=[
    {
      "Icons":Icons.person
    },
    {
      "Icons":Icons.password
    },
    {
      "Icons":Icons.percent_outlined
    },
    {
      "Icons":Icons.person
    },
    {
      "Icons":Icons.password
    },
    {
      "Icons":Icons.percent_outlined
    },{
      "Icons":Icons.person
    },
    {
      "Icons":Icons.password
    },
    {
      "Icons":Icons.percent_outlined
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View"),
        centerTitle: true,
      ),
      body: Column(children: [
        Container(
          height: 100,
          width: 100,
          color: Colors.blue,
        ),Container(
          height: 100,
          width: 100,
          color: Colors.green,
        )
      ],)
    );
  }

}