import 'package:flutter/material.dart';
import 'package:stemlab2/models/category.dart';
import 'package:stemlab2/models/dto/quiz_result.dart';
import 'package:stemlab2/models/quiz.dart';
import 'package:stemlab2/screens/home_screen.dart';
import 'package:stemlab2/screens/news.dart';
import 'package:stemlab2/screens/quiz_category.dart';
import 'package:stemlab2/screens/quiz_category_details.dart';
import 'package:stemlab2/screens/quiz_history_screen.dart';
import 'package:stemlab2/screens/quiz_result_screen.dart';
import 'package:stemlab2/screens/quiz_screen.dart';
import 'package:stemlab2/screens/splash_screen.dart';
import 'package:stemlab2/screens/stem_main_page.dart';
import 'package:stemlab2/screens/stemlab.dart';
import 'package:stemlab2/screens/tab_controller.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case NewsPage.routeName:
        return MaterialPageRoute(builder: (_) => NewsPage());
      case TabControl.routeName:
        return MaterialPageRoute(builder: (_) => TabControl());
      case StemLabPage.routeName:
        return MaterialPageRoute(builder: (_) => StemLabPage());
      case MainPageExample.routeName:
        return MaterialPageRoute(builder: (_) => MainPageExample());
      case SplashScreen.routeName:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case HomeScreen.routeName:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case QuizScreen.routeName:
        if (args is Quiz) {
          return MaterialPageRoute(
            builder: (_) => QuizScreen(args),
          );
        }
        return _errorRoute();
      case QuizResultScreen.routeName:
        if (args is QuizResult) {
          return MaterialPageRoute(
            builder: (_) => QuizResultScreen(args),
          );
        }
        return _errorRoute();
      case QuizCategoryScreen.routeName:
        return MaterialPageRoute(builder: (_) => QuizCategoryScreen());
      case QuizHistoryScreen.routeName:
        return MaterialPageRoute(builder: (_) => QuizHistoryScreen());
      case QuizCategoryDetailsScreen.routeName:
        if (args is Category) {
          return MaterialPageRoute(
            builder: (_) => QuizCategoryDetailsScreen(args),
          );
        }
        return _errorRoute();

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text(
            'ERROR: Please try again.',
            style: TextStyle(fontSize: 32),
          ),
        ),
      );
    });
  }
}
