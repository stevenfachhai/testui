import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ohkarao/core/configs/assets/app_images.dart';
import 'package:ohkarao/presentation/home/pages/home.dart';
import 'package:ohkarao/presentation/home/screen/music_screen.dart';
import 'package:ohkarao/presentation/home/screen/notification_screen.dart';
import 'package:ohkarao/presentation/home/screen/profile_screen.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildCombinedSection(
                context, 'Song of the Month', 'Video of the Month'),
            SizedBox(height: 20),
            _buildSection(context, 'New Release'),
            SizedBox(height: 20),
            _buildSection(context, 'ÔHKARAO Music For You'),
            SizedBox(height: 20),
            _buildSection(context, 'ÔHKARAO Video For You'),
            SizedBox(height: 20),
            _buildSection(context, 'Top Charts'),
            SizedBox(height: 20),
            _buildSection(context, 'Playlist'),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildCombinedSection(
      BuildContext context, String songTitle, String videoTitle) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 248, 245, 245),
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 4, 4, 4).withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  songTitle,
                  style: GoogleFonts.yesevaOne(
                    fontSize: 24,
                    color: Color.fromARGB(255, 8, 8, 8),
                  ),
                ),
                SizedBox(height: 10),
                _buildSingleItem(context, AppImages.homePage, songTitle),
              ],
            ),
          ),
          SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  videoTitle,
                  style: GoogleFonts.yesevaOne(
                    fontSize: 24,
                    color: Color.fromARGB(255, 17, 17, 17),
                  ),
                ),
                SizedBox(height: 10),
                _buildSingleItem(context, AppImages.homePage, videoTitle),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSection(BuildContext context, String title) {
    if (title == 'New Release') {
      return _buildNewReleaseBanner(context);
    } else {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: GoogleFonts.yesevaOne(
              fontSize: 24,
              color: Color.fromARGB(255, 6, 6, 6),
            ),
          ),
          SizedBox(height: 10),
          _buildHorizontalList(context, title),
        ],
      );
    }
  }

  Widget _buildHorizontalList(BuildContext context, String type) {
    return Container(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            width: 120,
            margin: EdgeInsets.only(right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage(AppImages.homePage),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  '$type ${index + 1}',
                  style: TextStyle(
                    color: Color.fromARGB(255, 43, 43, 43),
                    fontSize: 16,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildSingleItem(
      BuildContext context, String imagePath, String title) {
    return Container(
      height: 150,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 5),
          Text(
            title,
            style: TextStyle(
              color: Color.fromARGB(255, 45, 44, 44),
              fontSize: 16,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }

  Widget _buildNewReleaseBanner(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Stack(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: const Color.fromARGB(255, 5, 5, 5),
              image: DecorationImage(
                image: AssetImage(AppImages.homePage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            left: 16,
            top: 16,
            child: Container(
              width: 120,
              height: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.blue,
                image: DecorationImage(
                  image: AssetImage(AppImages.homePage),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            left: 150,
            top: 16,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'MEZZO FORD',
                  style: GoogleFonts.yesevaOne(
                    fontSize: 20,
                    color: const Color.fromARGB(255, 10, 10, 10),
                  ),
                ),
                Text(
                  'KYMPACHANA VADA',
                  style: GoogleFonts.yesevaOne(
                    fontSize: 16,
                    color: const Color.fromARGB(255, 2, 2, 2),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'AUDIO',
                  style: GoogleFonts.yesevaOne(
                    fontSize: 16,
                    color: const Color.fromARGB(255, 11, 11, 11),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 16,
            bottom: 16,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Icon(Icons.shopping_cart,
                    color: const Color.fromARGB(255, 6, 6, 6)),
                Text(
                  'BUY NOW',
                  style: GoogleFonts.yesevaOne(
                    fontSize: 16,
                    color: const Color.fromARGB(255, 8, 8, 8),
                  ),
                ),
                Text(
                  '\Rs10',
                  style: GoogleFonts.yesevaOne(
                    fontSize: 16,
                    color: const Color.fromARGB(255, 13, 13, 13),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const HomeTab(),
    MusicScreen(),
    const HomePage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.notifications),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NotificationScreen()),
            );
          },
        ),
        title: Center(
          child: Text(
            'ÔHKARAO MUSIC & VIDEO',
            style: GoogleFonts.yesevaOne(color: Color.fromARGB(255, 6, 6, 6)),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfileScreen()),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.music_note),
            label: 'MUSIC',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_call),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.store),
            label: 'STORE',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Color.fromARGB(255, 11, 11, 11),
        selectedLabelStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 14,
        ),
        unselectedLabelStyle: TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 12,
        ),
        backgroundColor: Color.fromARGB(255, 10, 10, 10),
        onTap: _onItemTapped,
      ),
    );
  }
}
