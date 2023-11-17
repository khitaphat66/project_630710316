import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../main.dart';

class PaymentScreen extends StatelessWidget {
  final String movie;
  final String selectedFormat;
  final String selectedDay;
  final int selectedTime;
  final List<int> selectedSeats;

  PaymentScreen({
    required this.movie,
    required this.selectedFormat,
    required this.selectedDay,
    required this.selectedTime,
    required this.selectedSeats,
  });

  double calculateTotalAmount() {
    final seatPrice = 160.0;
    return selectedSeats.length * seatPrice;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ชำระเงิน'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'ชื่อภาพยนต์: $movie',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            SizedBox(height: 20),
            Text(
              'ระบบ: $selectedFormat',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            SizedBox(height: 5),
            Text(
              'วัน: $selectedDay',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            SizedBox(height: 5),
            Text(
              'เวลา: ${selectedTime + 10}:30 AM',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            SizedBox(height: 5),
            Text(
              'เลขที่นั่ง: ${selectedSeats.join(", ")}',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            SizedBox(height: 20),
            // Display total amount
            Text(
              'ยอดรวม: ${calculateTotalAmount()} บาท',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
            ),

            // Add payment details here (e.g., total amount, payment methods, etc.)
            SizedBox(height: 20),
            Material(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
              child: InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyApp(),
                    ),
                  );
                },
                child: Container(
                  height: 55,
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: Text(
                      "ยืนยัน",
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
    );
  }
}