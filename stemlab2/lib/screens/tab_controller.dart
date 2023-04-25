import 'package:flutter/material.dart';
import 'package:stemlab2/screens/news.dart';
import 'package:stemlab2/screens/stem_main_page.dart';

class TabControl extends StatefulWidget {
  static const routeName = '/tab';
  const TabControl({Key? key}) : super(key: key);

  @override
  State<TabControl> createState() => _TabControlState();
}

class _TabControlState extends State<TabControl> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
                tabs: [
                  Tab(child: Text('Басты бет'),),
                  Tab(child: Text('Жаңалықтар'),),
                ]
            ),
            title: Text('STEM'),
          ),
          body: const TabBarView(
            children: [
              MainPageExample(),
              NewsPage()
            ],
          )
      ),
    );
  }
}
