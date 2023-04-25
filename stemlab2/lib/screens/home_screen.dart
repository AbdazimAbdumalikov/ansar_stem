import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stemlab2/common/alert_util.dart';
import 'package:stemlab2/common/theme_helper.dart';
import 'package:stemlab2/screens/news.dart';
import 'package:stemlab2/screens/stem_main_page.dart';
import 'package:stemlab2/screens/stemlab.dart';
import 'package:stemlab2/screens/tab_controller.dart';
import 'package:stemlab2/stores/quiz_store.dart';
import 'package:stemlab2/widgets/disco_button.dart';

import 'quiz_category.dart';
import 'quiz_history_screen.dart';
import 'quiz_screen.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home';
  const HomeScreen({Key? key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  final QuizStore _quizStore = QuizStore();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _key,
        drawer: navigationDrawer(),
        body: SingleChildScrollView(
          child:  Container(
            alignment: Alignment.center,
            decoration: ThemeHelper.fullScreenBgBoxDecoration(),
            child: Column(
              children: [
                drawerToggleButton(),
                Column(
                  children: [
                    headerText("Stem Lab"),
                    SizedBox(height: 30),
                    ...homeScreenButtons(context),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Drawer navigationDrawer() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.deepPurple,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Stem Lab",
                  style: TextStyle(color: Colors.white, fontSize: 32),
                ),
                Text(
                  "Version: 1.00",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ],
            ),
          ),
          ListTile(
            title: const Text('Басты бет'),
            onTap: () {
              Navigator.pushReplacementNamed(context, HomeScreen.routeName);
            },
          ),
          ListTile(
            title: const Text('Бастау'),
            onTap: () async {
              var quiz = await _quizStore.getRandomQuizAsync();
              Navigator.pushNamed(context, "/quiz", arguments: quiz);
            },
          ),
          ListTile(
            title: const Text('Санаттар'),
            onTap: () {
              Navigator.pushNamed(context, QuizCategoryScreen.routeName);
            },
          ),
          ListTile(
            title: const Text('Тапсырылғандар'),
            onTap: () {
              Navigator.pushNamed(context, QuizHistoryScreen.routeName);
            },
          ),
          ListTile(
            title: const Text('Лаборатория'),
            onTap: () {
              Navigator.pushNamed(context, QuizHistoryScreen.routeName);
            },
          ),
          ListTile(
            title: const Text('STEM'),
            onTap: () {
              Navigator.pushNamed(context, NewsPage.routeName);
            },
          ),
          Divider(
            thickness: 2,
          ),
          ListTile(
            title: const Text('Қосымша туралы'),
            onTap: () {
              AlertUtil.showAlert(context, "Құрастырушы:", "Ансар");
            },
          ),
          ListTile(
            title: const Text('Exit'),
            onTap: () {
              if (Platform.isAndroid) {
                SystemNavigator.pop();
              } else if (Platform.isIOS) {
                exit(0);
              }
            },
          ),
        ],
      ),
    );
  }

  Widget drawerToggleButton() {
    return Container(
      padding: EdgeInsets.only(top: 20, left: 20),
      alignment: Alignment.topLeft,
      child: GestureDetector(
        child: Image(
          image: AssetImage("assets/icons/menu.png"),
          width: 36,
        ),
        onTap: () {
          _key.currentState!.openDrawer();
        },
      ),
    );
  }

  Text headerText(String text) {
    return Text(
      text,
      style: TextStyle(
          fontSize: 72,
          color: ThemeHelper.accentColor,
          fontWeight: FontWeight.bold,
          shadows: [
            Shadow(color: ThemeHelper.shadowColor,
                offset: Offset(-5, 5),
                blurRadius: 30)
          ]),
    );
  }

  List<Widget> homeScreenButtons(BuildContext context) {
    return [
      DiscoButton(
        onPressed: () {
          Navigator.pushNamed(context, TabControl.routeName);
        },
        child: Text(
          "StemLab",
          style: TextStyle(fontSize: 30, color: ThemeHelper.primaryColor),
        ),
      ),
      DiscoButton(
        onPressed: () async {
          var quiz = await _quizStore.getRandomQuizAsync();
          Navigator.pushNamed(context, QuizScreen.routeName, arguments: quiz);
        },
        child: Text(
          "Бастау",
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
        isActive: true,
      ),
      DiscoButton(
        onPressed: () {
          Navigator.pushNamed(context, QuizCategoryScreen.routeName);
        },
        child: Text(
          "Санаттар",
          style: TextStyle(fontSize: 30, color: ThemeHelper.primaryColor),
        ),
      ),
      DiscoButton(
        onPressed: () {
          Navigator.pushNamed(context, QuizHistoryScreen.routeName);
        },
        child: Text(
          "Тарихы",
          style: TextStyle(fontSize: 30, color: ThemeHelper.primaryColor),
        ),
      ),
    ];
  }
}
