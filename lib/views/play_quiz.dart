import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:quiz_maker/models/question_model.dart';
import 'package:quiz_maker/services/database.dart';
import 'package:quiz_maker/widgets/quiz_play_widget.dart';
import 'package:quiz_maker/widgets/widgets.dart';

class PlayQuiz extends StatefulWidget {

  final String quizId; 
  PlayQuiz({this.quizId});

  @override
  _PlayQuizState createState() => _PlayQuizState();
}

int total = 0;
int _correct =0;
int _incorrect = 0;
int _notAttempted = 0;

class _PlayQuizState extends State<PlayQuiz> {

  DatabaseService databaseService;
  QuerySnapshot questionSnapshot;


  @override
  void initState() {
    print("Quiz Id : ${widget.quizId}");
    databaseService.getsQuizData(widget.quizId).then((value){
      questionSnapshot=value;
      _notAttempted = 0;
      _correct =0;
      _incorrect =0;
      total = questionSnapshot.documents.length;
      setState(() {
        print('$total this is total');
      });
    });
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
      body: Container(
        child: Column(
          children: <Widget>[
            questionSnapshot.documents == null ?
            Container() :
            ListView.builder(
              itemCount: questionSnapshot.documents.length,
              itemBuilder: (context,index){
                return QuizPlayTile(
                  
                );
              },
            ),
          ],
        ),
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
          SizedBox(height: 4,),
          OptionTile(
            correctAnswer: widget.questionModel.option1,
            description: widget.questionModel.option2,
            option: "B",
            optionSelected: optionSelected,
          ),
          SizedBox(height: 4,),
          OptionTile(
            correctAnswer: widget.questionModel.option1,
            description: widget.questionModel.option3,
            option: "C",
            optionSelected: optionSelected,
          ),
          SizedBox(height: 4,),
          OptionTile(
            correctAnswer: widget.questionModel.option1,
            description: widget.questionModel.option4,
            option: "D",
            optionSelected: optionSelected,
          ),
        ],
      ),
    );
  }
}