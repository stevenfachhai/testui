import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ohkarao/core/configs/assets/app_images.dart';

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Notifications',
          style: GoogleFonts.yesevaOne(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "What's New",
              style: GoogleFonts.yesevaOne(fontSize: 24, color: Colors.white),
            ),
            SizedBox(height: 10),
            Text(
              "The latest Top Chart from Artists music release and something trending",
              style: TextStyle(color: Colors.white70, fontSize: 16),
            ),
            SizedBox(height: 20),
            Image.asset(AppImages.homePage), // Change with your image
            SizedBox(height: 20),
            _buildNotificationItem(
              'EP ALBUM RELEASE AW',
              'Maraland Rock Society (MRS) zyta...',
              '2 days ago',
              367,
              14,
            ),
            _buildNotificationItem(
              'MARA RAP LEGEND MANIAH APA HA SAI',
              'june 1, 2024 pa lata marasaw rap legend tata...',
              '8 hours ago',
              12,
              8,
            ),
          ],
        ),
      ),
      backgroundColor: Colors.black,
    );
  }

  Widget _buildNotificationItem(
      String title, String description, String time, int likes, int comments) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey[900],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style: GoogleFonts.yesevaOne(fontSize: 20, color: Colors.white)),
          SizedBox(height: 5),
          Text(description, style: TextStyle(color: Colors.white70)),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(time, style: TextStyle(color: Colors.white38)),
              Row(
                children: [
                  Icon(Icons.favorite, color: Colors.red, size: 16),
                  SizedBox(width: 5),
                  Text('$likes', style: TextStyle(color: Colors.white70)),
                  SizedBox(width: 15),
                  Icon(Icons.comment, color: Colors.blue, size: 16),
                  SizedBox(width: 5),
                  Text('$comments', style: TextStyle(color: Colors.white70)),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
