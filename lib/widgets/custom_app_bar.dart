import 'package:flutter/material.dart';

Widget customAppBar() {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 25,horizontal: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          radius: 25,
          backgroundColor: Colors.brown,
          backgroundImage: AssetImage('assets/h.jpeg'),
        ),
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey.shade100,
            border: Border.all(color: Colors.grey),
          ),
          child: Center(
            child: Stack(
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.notifications_none,size: 25,)),
                Positioned(
                  left: 25,
                  top: 11,
                  child: Container(
                    height: 7,
                    width: 7,
                    decoration: BoxDecoration(
                      color: Color(0xFF2d80e6),
                      shape: BoxShape.circle,
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    ),
  );
}
