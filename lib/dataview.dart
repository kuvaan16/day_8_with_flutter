import 'package:day_8_with_flutter/place_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:ionicons/ionicons.dart';

class DataView extends StatelessWidget {
  final Place dataview;
  const DataView({Key? key, required this.dataview});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Stack(
                  children: [
                    Container(
                      child: ClipRRect(
                        child: Image.asset(dataview.img),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 18,
                      top: 35,
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(102, 158, 158, 158),
                            borderRadius: BorderRadius.circular(24),
                            border: Border.all(
                                color: Color.fromARGB(44, 255, 255, 255))),
                        child: Icon(
                          Ionicons.bookmark,
                          color: Colors.white,
                          size: 14,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        dataview.name,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 16,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              "4.5",
                              style: TextStyle(
                                  color: Colors.black54, fontSize: 16),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.blue,
                            size: 16,
                          ),
                          Text(
                            "Kurdstan, Duhok",
                            style:
                                TextStyle(color: Colors.black54, fontSize: 12),
                          ),
                        ],
                      ),
                      Container(
                        width: 100,
                        child: Stack(
                          children: [
                            CircleAvatar(
                              radius: 12,
                              backgroundImage:
                                  AssetImage("assets/person1.jpeg"),
                            ),
                            Positioned(
                              left: 25,
                              child: CircleAvatar(
                                radius: 12,
                                backgroundImage:
                                    AssetImage("assets/person2.jpeg"),
                              ),
                            ),
                            Positioned(
                              left: 50,
                              child: CircleAvatar(
                                radius: 12,
                                backgroundImage:
                                    AssetImage("assets/person3.jpeg"),
                              ),
                            ),
                            Positioned(
                              left: 75,
                              child: CircleAvatar(
                                radius: 12,
                                backgroundImage:
                                    AssetImage("assets/person4.jpeg"),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Text(
                        "lorem ipsum dolor sit amet, consectetur lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum",
                        style: TextStyle(
                          color: Colors.black54,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "lorem ipsum dolor sit amet, consectet lor...",
                            style: TextStyle(
                              color: Colors.black54,
                            ),
                          ),
                          Text(
                            "Read More",
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  title: Text(
                    "More Images",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          "assets/places/place1.jpg",
                          width: 70,
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          "assets/places/place1.jpg",
                          width: 70,
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          "assets/places/place1.jpg",
                          width: 70,
                        ),
                      ),
                      Stack(children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            "assets/places/place1.jpg",
                            width: 70,
                          ),
                        ),
                        Container(
                          height: 90,
                          width: 70,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(106, 0, 0, 0),
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        Positioned(
                            top: 38,
                            left: 23,
                            child: Text(
                              "10+",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ))
                      ]),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              height: 70,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "\$25",
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        Text("/person"),
                      ],
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              horizontal: 80, vertical: 15),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40))),
                      onPressed: () {},
                      child: Text("Book Now"),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
