import 'package:doctor_reservation/widgets/Lists.dart';
import 'package:doctor_reservation/widgets/custom_app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Doctors extends StatefulWidget {
  @override
  _DoctorsState createState() => _DoctorsState();
}

class _DoctorsState extends State<Doctors> {
 int index_page=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          customAppBar(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              'Find Doctor With',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Text(
              'Your Hands!',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width - 120,
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Search doctor',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        prefixIcon: Icon(Icons.search_rounded)),
                  ),
                ),
                Container(
                  width: 60,
                  height: 62,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blueAccent),
                  child: Center(
                      child: ImageIcon(
                    AssetImage('assets/filter.png'),
                    color: Colors.white,
                  )),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Categories',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(
                  'See All',
                  style: TextStyle(fontSize: 18),
                )
              ],
            ),
          ),
          SizedBox(
            height: 110,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: cat.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      for (int i = 0; i < cat.length; i++) {
                        if (cat[i]['is_selected'] == true) {
                          setState(() {
                            cat[i]['is_selected'] = false;
                          });
                        }
                      }
                      setState(() {
                        cat[index]['is_selected'] = true;
                        index_page=index;
                      });
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width / 4 - 20,
                      height: 120,
                      margin: EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: cat[index]['is_selected']
                                ? Color(0xFF2d80e6)
                                : Colors.grey.shade100),
                        //  color: Colors.indigo,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 28,
                              backgroundColor: cat[index]['is_selected']
                                  ? Color(0xFF2d80e6)
                                  : Colors.white,
                              child: ImageIcon(
                                AssetImage('assets/${cat[index]['image']}'),
                                size: 35,
                                color: cat[index]['is_selected']
                                    ? Colors.white
                                    : Colors.grey,
                              ),
                            ),
                            SizedBox(
                              height: 7.5,
                            ),
                            Text(
                              cat[index]['title'],
                              style: TextStyle(
                                  fontSize: 15,
                                  color: cat[index]['is_selected']
                                      ? Color(0xFF2d80e6)
                                      : Colors.black),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          ),
          SizedBox(
            height: 250,
            child: ListView.builder(
              itemCount:
                itemBuilder: (context,x) {
              return Container(
                width: MediaQuery.of(context).size.width,
                height: 100,
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 7.5),
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey.shade100),
                ),
                child: Row(

                  children: [
                    CircleAvatar(
                      radius: 25,
                      //backgroundColor: Colors.indigo,
                      backgroundImage: AssetImage('assets/${cat[index_page][x]['pageindax']['image']}'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 25,
                          ),
                          Text('data'),
                          SizedBox(
                            height: 5,
                          ),
                          Text('data'),
                          SizedBox(
                            height: 7.5,
                          ),
                          Row(
                            children: [

                              ImageIcon(
                                AssetImage('assets/star.png'),
                                size: 15,
                                color: Color(0xFFefbb3f),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text('data'),
                              SizedBox(
                                width: 65,
                              ),
                              ImageIcon(
                                AssetImage('assets/clock2.png'),
                                size: 15,
                                color: Colors.red,
                              ),
                              SizedBox(
                                width: 7.5,
                              ),
                              Text('data'),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              );
            }),
          )
        ],
      ),
    );
  }
}
