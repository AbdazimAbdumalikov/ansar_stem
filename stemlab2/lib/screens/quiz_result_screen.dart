import 'package:flutter/material.dart';
import 'package:stemlab2/common/theme_helper.dart';
import 'package:stemlab2/models/dto/quiz_result.dart';
import 'package:stemlab2/screens/quiz_history_screen.dart';
import 'package:stemlab2/widgets/disco_button.dart';

class QuizResultScreen extends StatefulWidget {
  static const routeName = '/quizResult';
  QuizResult result;
  QuizResultScreen(this.result, {Key? key}) : super(key: key);

  @override
  _QuizResultScreenState createState() => _QuizResultScreenState(this.result);
}

class _QuizResultScreenState extends State<QuizResultScreen> {
  QuizResult result;
  int totalQuestions = 0;
  double totalCorrect = 0;

  _QuizResultScreenState(this.result);

  @override
  void initState() {
    setState(() {
      totalCorrect = result.totalCorrect;
      totalQuestions = result.quiz.questions.length;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: ThemeHelper.fullScreenBgBoxDecoration(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            quizResultInfo(result),
            bottomButtons(),
          ],
        ),
      ),
    );
  }

  Widget bottomButtons() {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          DiscoButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              "Жабу",
              style: TextStyle(color: Colors.deepPurple, fontSize: 20),
            ),
            width: 150,
            height: 50,
          ),
          DiscoButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, QuizHistoryScreen.routeName);
            },
            child: Text(
              "Тарихы",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            width: 150,
            height: 50,
            isActive: true,
          ),
        ],
      ),
    );
  }

  Widget quizResultInfo(QuizResult result) {
    return Column(
      children: [
        Image(
          image: AssetImage("assets/images/quizResultBadge.png"),
        ),
        Text(
          "Құттықтаймыз!",
          style: Theme.of(context).textTheme.headline3,
        ),
        Text(
          "Сіз викторинаны аяқтадыңыз",
          style: Theme.of(context).textTheme.headline5,
        ),
        Text(
          "Сіздің ұпайыңыз",
          style: Theme.of(context).textTheme.headline4,
        ),
        Text(
          "$totalCorrect/$totalQuestions",
          style: Theme.of(context).textTheme.headline2,
        ),
      ],
    );
  }
}
