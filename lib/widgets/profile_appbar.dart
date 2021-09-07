import 'package:flutter/material.dart';

Widget appBar( BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white12),
            shape: BoxShape.circle,
          ),
          child: Center(
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              }, icon: Icon(Icons.arrow_back,size: 20,), color: Colors.white,),
          ),
        ),
        Container(
          height: 40,
          width: 40,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white12),
            shape: BoxShape.circle,
          ),
          child: IconButton(
            onPressed: () {}, icon: Icon(Icons.favorite_border,size: 20,), color: Colors.white,),
        )
      ],
    ),
  );
}