import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'booking_screen.dart';

class HomeScreen extends StatelessWidget {
  List movies = [
    "บุพเพสันนิวาส 2",
    "Little Mermaid",
    "แสงกระสือ",
    "Joker",
    "Avatar 2",
  ];
  List movies2 = [
    "ธี่หยด",
    "The Marvels",
    "สัปเหร่อ",
    "เพื่อน(ไม่)สนิท",
    "Napoleon",
  ];
  List StarMovies = [
    "4.5",
    "4.7",
    "4.3",
    "4.8",
    "4.9",
  ];
  List time = [
    "2h 46min",
    "2h 23min",
    "2h 2min",
    "2h 2min",
    "2h 12min",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.sort,
          size: 32,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "KJ CINEPLEX",
          style: TextStyle(
            fontSize: 24,
            color: Color(0xFF90CAF9),
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Icon(
                  Icons.search,
                  size: 28,
                ),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(  //สามารถเลือนได้
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "ฉายแล้ววันนี้",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "ทั้งหมด",
                      style: TextStyle(
                        color: Color(0xFF90CAF9),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 390,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    BookingScreen(movie: movies[index]),
                              ),
                            );
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              "images/${movies[index]}.jpg",
                              height: 280,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                movies[index],
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              SizedBox(height: 4),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellowAccent,
                                    size: 18,
                                  ),
                                  Text(
                                    StarMovies[index],
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.yellowAccent,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: 8),
                              Row(
                                children: [
                                  Icon(
                                    Icons.access_time_rounded,
                                    color: Colors.white60,
                                    size: 20,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    time[index],
                                    style: TextStyle(
                                      color: Colors.white60,
                                      fontSize: 13,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.black26,
                    ),
                    child: Text(
                      "เข้าฉายเร็ว ๆ นี้",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "ทั้งหมด",
                      style: TextStyle(
                        color: Color(0xFF90CAF9),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 5),
            SizedBox(
              height: 300,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              "images/${movies2[index]}.jpg",
                              //fit: BoxFit.cover,
                              height: 200,
                              width: 180,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                movies2[index],
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
