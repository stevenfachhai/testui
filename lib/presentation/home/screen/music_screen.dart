import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ohkarao/core/configs/assets/app_images.dart';

class MusicScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: TabBar(
            isScrollable: true,
            indicatorColor: Colors.blue,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white60,
            tabs: [
              Tab(text: 'EXPLORE'),
              Tab(text: 'TRENDING'),
              Tab(text: 'TOP CHART'),
              Tab(text: 'AUDIO LIBRARY'),
              Tab(text: 'NEWS'),
            ],
          ),
          backgroundColor: Colors.black,
          elevation: 0,
        ),
        body: TabBarView(
          children: [
            buildContent(),
            Center(
                child: Text('Trending', style: TextStyle(color: Colors.white))),
            Center(
                child:
                    Text('Top Chart', style: TextStyle(color: Colors.white))),
            Center(
                child: Text('Audio Library',
                    style: TextStyle(color: Colors.white))),
            Center(child: Text('News', style: TextStyle(color: Colors.white))),
          ],
        ),
      ),
    );
  }

  Widget buildContent() {
    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: [
        _buildSearchBar(),
        SizedBox(height: 20),
        _buildExclusiveTile('Exclusive'),
        _buildExclusiveTile('Genres'),
        _buildExclusiveTile('Album'),
        _buildExclusiveTile('Buy Tickets'),
        _buildExclusiveTile('Merchandise'),
      ],
    );
  }

  Widget _buildSearchBar() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(
        color: Colors.grey[800],
        borderRadius: BorderRadius.circular(24.0),
      ),
      child: const TextField(
        decoration: InputDecoration(
          hintText: 'Search...',
          hintStyle: TextStyle(color: Colors.white54),
          border: InputBorder.none,
          icon: Icon(Icons.search, color: Colors.white),
        ),
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  Widget _buildExclusiveTile(String title) {
    return GestureDetector(
      onTap: () {
        print('$title tapped');
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.blueGrey,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  title,
                  style: GoogleFonts.libreBaskerville(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Image.asset(
                AppImages.homePage,
                width: 50,
                height: 50,
                errorBuilder: (context, error, stackTrace) {
                  return Icon(Icons.broken_image,
                      size: 50, color: Colors.white);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
