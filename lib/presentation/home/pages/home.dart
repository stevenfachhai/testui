import 'package:flutter/material.dart';
import 'package:ohkarao/common/widgets/appbar/app_bar.dart';
import 'package:ohkarao/core/configs/assets/app_vectors.dart';
import 'package:ohkarao/presentation/home/widget/news_songs.dart';
import 'package:ohkarao/presentation/home/widget/play_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppBar(
        title: Image.asset(
          AppVectors.logo,
          height: 200,
          width: 200,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _tabs(),
            SizedBox(
              height: 260,
              child: TabBarView(
                controller: _tabController,
                children: [
                  const NewsSongs(),
                  Container(),
                  Container(),
                  Container(),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const PlayList()
          ],
        ),
      ),
    );
  }

  Widget _tabs() {
    return TabBar(controller: _tabController, tabs: const [
      Text(
        'News',
        style: TextStyle(fontWeight: FontWeight.w500),
      ),
      Text(
        'video',
        style: TextStyle(fontWeight: FontWeight.w500),
      ),
      Text(
        'Artist',
        style: TextStyle(fontWeight: FontWeight.w500),
      ),
      Text(
        'podcast',
        style: TextStyle(fontWeight: FontWeight.w500),
      ),
    ]);
  }
}
