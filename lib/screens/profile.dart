import 'package:doctor_reservation/widgets/contact.dart';
import 'package:doctor_reservation/widgets/profile_appbar.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  String image;
  String name;
  String job;
  String location;
  double rate;
  String patient;

  Profile({
    required this.image,
    required this.name,
    required this.job,
    required this.location,
    required this.patient,
    required this.rate,
  });

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: Color(0xFF2d80e6),
                child: Column(
                  children: [
                    appBar(context),
                    Container(
                      height: MediaQuery.of(context).size.height / 3 ,
                      width: MediaQuery.of(context).size.width / 2 + 85,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/${widget.image}'),fit: BoxFit.fitWidth)),
                    )
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 2 + 60,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(35),
                      topLeft: Radius.circular(35)),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                        // left: ,
                      ),
                      child: Row(
                        children: [
                          Text(
                            widget.name,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30),
                          ),
                          Expanded(
                              child: SizedBox(
                            width: 25,
                          )),
                          contact(icon: Icons.call),
                          contact(icon: Icons.videocam_outlined),
                          contact(icon: Icons.email_outlined),
                        ],
                      ),
                    ),
                    Text(
                      widget.job,
                      style: TextStyle(color: Colors.grey, fontSize: 20),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 7.5),
                      child: Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.grey,
                            size: 20,
                          ),
                          Text(
                            widget.location,
                            style: TextStyle(color: Colors.grey, fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Description',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Dr.Ahmed is one of the best doctor in Cairo and \n has 10 years experience .he has done more than \n 100 surgeries .....  ',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                    Row(
                      children: [
                        Container(
                          height: 70,
                          padding: EdgeInsets.symmetric(vertical: 10),
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width / 2-40 ,
                          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey.shade400),
                          ),
                          child: Column(
                            children: [
                              Text('Reviews',style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1,
                              ),),
                              Padding(
                                padding: const EdgeInsets.only(left: 50,top: 7.5),
                                child: Row(
                                  children: [
                                    ImageIcon(
                                      AssetImage('assets/star.png'),
                                      size: 15,
                                      color: Color(0xFFefbb3f),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text((widget.rate).toString(),style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15
                                    ),)
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 70,
                          padding: EdgeInsets.symmetric(vertical: 10),
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width / 2-40 ,
                          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey.shade400),
                          ),
                          child: Column(
                            children: [
                              Text('Patient',style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1
                              ),),
                              Padding(
                                padding: const EdgeInsets.only(left: 50,top: 7.5),
                                child: Row(
                                  children: [
                                    ImageIcon(
                                      AssetImage('assets/group.png'),
                                      size: 16,
                                      color: Colors.blueAccent,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(widget.patient,style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15
                                    ),)
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),

                      ],
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width-30,
                      height: 50,
                      margin: EdgeInsets.symmetric(vertical: 7.5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xFF2d80e6),
                      ),
                      child: Center(
                        child: Text('Book an Appointment',style: TextStyle(
                          fontSize: 18,
                          color: Colors.white
                        ),),
                      ),
                    )
                  ],

                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
