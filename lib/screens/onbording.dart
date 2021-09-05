import 'package:doctor_reservation/screens/doctors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnBording extends StatefulWidget {
  const OnBording({Key? key}) : super(key: key);

  @override
  _OnBordingState createState() => _OnBordingState();
}

class _OnBordingState extends State<OnBording> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2d80e6),
      body: Column(
        children: [
          SizedBox(
            height: 65,
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            width: MediaQuery.of(context).size.width,
            height: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                // border: Border.all(color: Colors.grey),
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      'assets/doctors.jpg',
                    ))),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Find Your',
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Prefect Doctor',
            style: TextStyle(
                fontSize: 35, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 12.5,
          ),
          Text(
            'Easy way to make',
            style: TextStyle(
              fontSize: 15,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'an appointment with a doctor',
            style: TextStyle(
              fontSize: 15,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 60,
          ),
          InkWell(
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => Doctors()));
            },
            child: Container(
              width: MediaQuery.of(context).size.width / 2,
              height: 50,
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Text(
                  'Get Started',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
