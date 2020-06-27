import 'package:flutter/material.dart';
import 'package:quiz_maker/widgets/widgets.dart';

class AddQuestion extends StatefulWidget {
  @override
  _AddQuestionState createState() => _AddQuestionState();
}

class _AddQuestionState extends State<AddQuestion> {
  final _formKey = GlobalKey<FormState>();
  String question, option1,option2,option3,option4;
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
        padding: EdgeInsets.symmetric(horizontal:24),
        child: Column(
          children: <Widget>[
            TextFormField(
              validator: (val) =>
                  val.isEmpty ? "Enter Question" : null,
              decoration: InputDecoration(
                hintText: "Qestion",
              ),
              onChanged: (val) {
                question = val;
              },
            ),
            SizedBox(
              height: 6,
            ),
            TextFormField(
              validator: (val) =>
                  val.isEmpty ? "Enter Option 1" : null,
              decoration: InputDecoration(
                hintText: "Option 1 (Correct Answer)",
              ),
              onChanged: (val) {
                option1 = val;
              },
            ),
            SizedBox(
              height: 6,
            ),
            TextFormField(
              validator: (val) =>
                  val.isEmpty ? "Enter Option 2" : null,
              decoration: InputDecoration(
                hintText: "Option 2",
              ),
              onChanged: (val) {
                option2 = val;
              },
            ),
            SizedBox(
              height: 6,
            ),
            TextFormField(
              validator: (val) =>
                  val.isEmpty ? "Enter Option 3" : null,
              decoration: InputDecoration(
                hintText: "Option 3",
              ),
              onChanged: (val) {
                option3 = val;
              },
            ),
            SizedBox(
              height: 6,
            ),
            TextFormField(
              validator: (val) =>
                  val.isEmpty ? "Enter Option 4" : null,
              decoration: InputDecoration(
                hintText: "Option 4",
              ),
              onChanged: (val) {
                option4 = val;
              },
            ),
            Spacer(),
            
          ],
        ),
      ),
    );
  }
}
