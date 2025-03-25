import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ohkarao/core/configs/assets/app_images.dart';
import 'package:ohkarao/presentation/home/screen/premium_screen.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Edit Profile',
          style: GoogleFonts.yesevaOne(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage:
                  AssetImage(AppImages.homePage), // Replace with actual image
            ),
            SizedBox(height: 10),
            Text(
              "L. Philemon",
              style: GoogleFonts.yesevaOne(fontSize: 22, color: Colors.white),
            ),
            Text(
              "montebensonjr@gmail.com",
              style: TextStyle(color: Colors.white70, fontSize: 16),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PremiumScreen()),
                );
              },
              style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.grey[800]),
              child: Text("Edit", style: TextStyle(color: Colors.white)),
            ),
            SizedBox(height: 20),
            _buildSectionTitle("Playlists"),
            _buildPlaylistItem("My gospel playlist", 0),
            _buildPlaylistItem("CHILL COOL", 0),
            _buildPlaylistItem("BENSON JR MEDIA P", 0),
            SizedBox(height: 20),
            _buildSectionTitle("JOIN PREMIUM MEMBERSHIP", color: Colors.yellow),
            SizedBox(height: 10),
            _buildPremiumFeatures(),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PremiumScreen()),
                );
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              child: Text("JOIN", style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.black,
    );
  }

  Widget _buildSectionTitle(String title, {Color color = Colors.white}) {
    return Text(
      title,
      style: GoogleFonts.yesevaOne(fontSize: 18, color: color),
      textAlign: TextAlign.left,
    );
  }

  Widget _buildPlaylistItem(String name, int saves) {
    return ListTile(
      leading: Icon(Icons.music_note, color: Colors.white70),
      title: Text(name, style: TextStyle(color: Colors.white)),
      subtitle: Text("$saves saves", style: TextStyle(color: Colors.white54)),
      trailing: Icon(Icons.more_vert, color: Colors.white70),
    );
  }

  Widget _buildPremiumFeatures() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildPremiumFeature("✔ Ad-free music listening"),
        _buildPremiumFeature("✔ Download to listen offline"),
        _buildPremiumFeature("✔ Play songs in any order"),
        _buildPremiumFeature("✔ High-quality audio"),
        _buildPremiumFeature("✔ No shuffle listening restriction"),
        _buildPremiumFeature("✔ Organize listening queue"),
      ],
    );
  }

  Widget _buildPremiumFeature(String feature) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Text(feature, style: TextStyle(color: Colors.white70)),
    );
  }
}
