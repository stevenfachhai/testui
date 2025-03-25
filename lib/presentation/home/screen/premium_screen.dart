import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ohkarao/core/configs/assets/app_images.dart';

class PremiumScreen extends StatelessWidget {
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
            _buildSectionTitle("JOIN PREMIUM MEMBERSHIP", color: Colors.yellow),
            SizedBox(height: 20),
            _buildPremiumFeatures(),
            SizedBox(height: 20),
            _buildSectionTitle("Available Plans", color: Colors.blue),
            SizedBox(height: 10),
            _buildPlanCard(
              title: "Individual",
              price: "₹149 for 2 months",
              features: [
                "✔ 1 Premium account",
                "✔ Ad-free experience",
                "✔ Listen offline",
                "✔ High-quality audio",
              ],
              buttonText: "Try 1 month for ₹49",
              color: Colors.purple,
            ),
            _buildPlanCard(
              title: "Duo",
              price: "₹149 for 2 months",
              features: [
                "✔ 2 Premium accounts",
                "✔ Ad-free experience",
                "✔ Listen offline",
                "✔ High-quality audio",
              ],
              buttonText: "Get Premium Duo",
              color: Colors.orange,
            ),
            _buildPlanCard(
              title: "Family",
              price: "₹199 for 2 months",
              features: [
                "✔ Up to 6 Premium accounts",
                "✔ Ad-free experience",
                "✔ Listen offline",
                "✔ High-quality audio",
              ],
              buttonText: "Get Premium Family",
              color: Colors.blue,
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

  Widget _buildPlanCard({
    required String title,
    required String price,
    required List<String> features,
    required String buttonText,
    required Color color,
  }) {
    return Card(
      color: Colors.grey[900],
      margin: EdgeInsets.symmetric(vertical: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,
                style:
                    GoogleFonts.yesevaOne(fontSize: 20, color: Colors.white)),
            SizedBox(height: 5),
            Text(price, style: TextStyle(color: Colors.yellow, fontSize: 16)),
            SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: features
                  .map((feature) => _buildPremiumFeature(feature))
                  .toList(),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Add subscription logic
              },
              style: ElevatedButton.styleFrom(backgroundColor: color),
              child: Text(buttonText, style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
