import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_630710316/screens/payment_screen.dart';

class BookingScreen extends StatefulWidget {
  final String movie;

  BookingScreen({required this.movie});

  @override
  _BookingScreenState createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  String selectedFormat = " ";
  String selectedDay = " ";
  int selectedTime = -1;

  List formats = [
    "2D", "3D", "4DX", "IMAX",
  ];
  List days = [
    "Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun",
  ];

  List<int> selectedSeats = [];


  void updateSelectedFormat(int index) {
    setState(() {
      selectedFormat = formats[index];
    });
  }
  void updateSelectedDay(int indexD) {
    setState(() {
      selectedDay = days[indexD];
    });
  }
  void updateSelectedTime(int index) {
    setState(() {
      selectedTime = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black87,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.2,
              decoration: BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                  image: AssetImage(
                    "images/${widget.movie}.jpg",
                  ),
                  opacity: 0.6,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 40, left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: 28,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.share_outlined,
                              color: Colors.white,
                              size: 25,
                            ),
                            SizedBox(width: 10),
                            Icon(
                              Icons.favorite_outline,
                              color: Colors.white,
                              size: 25,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      widget.movie,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "ระบบ :",
                        style: TextStyle(
                          color: Color(0xFF90CAF9),
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 25,
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: formats.length,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                updateSelectedFormat(index);
                              },
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 8),
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                decoration: BoxDecoration(
                                  color: formats[index] == selectedFormat
                                      ? Color(0xFF90CAF9)
                                      : Colors.black45,
                                  borderRadius: BorderRadius.circular(4),
                                  border: formats[index] != selectedFormat
                                      ? Border.all(color: Colors.white60)
                                      : null,
                                ),
                                child: Center(
                                  child: Text(
                                    formats[index],
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white70,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    "เลือกวัน",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white70,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 8),
                  SizedBox(
                    height: 70,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: days.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            updateSelectedDay(index);
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 5),
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 8),
                            decoration: BoxDecoration(
                              color: days[index] == selectedDay
                                  ? Color(0xFF90CAF9)
                                  : Colors.black45,
                              borderRadius: BorderRadius.circular(4),
                              border: days[index] != selectedDay
                                  ? Border.all(color: Colors.white60)
                                  : null,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  days[index],
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  "${index + 10}",
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Color(0xFF90CAF9),
                      ),
                      Text(
                        "KJ Cineplx City",
                        style: TextStyle(
                          color: Colors.white70,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    "เลือกเวลา",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white70,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 8),
                  SizedBox(
                    height: 30,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 7,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            updateSelectedTime(index);
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 8),
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                              color: index == selectedTime
                                  ? Color(0xFF90CAF9)
                                  : Colors.white24,
                              borderRadius: BorderRadius.circular(7),
                              border: index != selectedTime
                                  ? Border.all(color: Colors.white30)
                                  : null,
                            ),
                            child: Center(
                              child: Text(
                                "${index + 13} : 45PM",
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),

                  SizedBox(height: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "เลือกที่นั่ง",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white70,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 8),
                      Container(
                        height: 200,
                        child: GridView.builder(
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 10, // Number of seats per row
                            crossAxisSpacing: 8.0,
                            mainAxisSpacing: 8.0,
                          ),
                          shrinkWrap: true,
                          itemCount: 40,
                          // Change this to the actual number of seats
                          itemBuilder: (context, index) {
                            final seatNumber = index + 1;
                            final isSeatSelected = selectedSeats.contains(seatNumber);
                            return InkWell(
                              onTap: () {
                                setState(() {
                                  if (isSeatSelected) {
                                    selectedSeats.remove(seatNumber);
                                  } else {
                                    selectedSeats.add(seatNumber);
                                  }
                                });
                              },
                              child: Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: isSeatSelected
                                      ? Colors.blueAccent // Change to selected seat color
                                      : Colors.white.withOpacity(0.3),
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                    color: Colors.white,
                                    width: isSeatSelected ? 2.0 : 1.0,
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    "$seatNumber",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: isSeatSelected ? Colors.white : Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Material(
                    color: Color(0xFF90CAF9).withOpacity(0.9),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PaymentScreen(
                              movie: widget.movie,
                              selectedFormat: selectedFormat,
                              selectedDay: selectedDay,
                              selectedTime: selectedTime,
                              selectedSeats: selectedSeats,
                            ),
                          ),
                        );
                      },
                      child: Container(
                        height: 55,
                        width: MediaQuery.of(context).size.width,
                        child: Center(
                          child: Text(
                            "จองตั๋วเลย",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
