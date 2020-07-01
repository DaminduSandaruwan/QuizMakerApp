import 'package:flutter/material.dart';
import 'package:quiz_maker/models/question_model.dart';
import 'package:quiz_maker/widgets/quiz_play_widget.dart';
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

class QuizPlayTile extends StatefulWidget {
  final QuestionModel questionModel;
  QuizPlayTile({this.questionModel});
  
  @override
  _QuizPlayTileState createState() => _QuizPlayTileState();
}

class _QuizPlayTileState extends State<QuizPlayTile> {

  String optionSelected ="";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text(widget.questionModel.question),
          SizedBox(height: 4,),
          OptionTile(
            correctAnswer: widget.questionModel.option1,
            description: widget.questionModel.option1,
            option: "A",
            optionSelected: optionSelected,
          ),
        ],
      ),
    );
  }
}