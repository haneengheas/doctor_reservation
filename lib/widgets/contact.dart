import 'package:flutter/material.dart';
Widget contact({required IconData icon}){
  return Container(
    height: 40,
    width: 40,
    margin: EdgeInsets.symmetric(horizontal: 5),
    decoration:BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.grey.shade200,
    ) ,
    child: Center(
      child: IconButton(
        onPressed: (){},
        icon: Icon(icon,color: Colors.blueAccent,),
      ),
    ),
  );
}