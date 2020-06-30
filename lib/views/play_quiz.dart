import 'package:flutter/material.dart';
import 'package:quiz_maker/widgets/widgets.dart';

class PlayQuiz extends StatefulWidget {

  final String quizId; 
  PlayQuiz({this.quizId});

  @override
  _PlayQuizState createState() => _PlayQuizState();
}

class _PlayQuizState extends State<PlayQuiz> {

  @override
  void initState() {
    print("Quiz Id : ${widget.quizId}");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: appBar(context),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black87),
        brightness: Brightness.light,
      ),
    );
  }
}