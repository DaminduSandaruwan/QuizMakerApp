import 'package:flutter/material.dart';
import 'package:quiz_maker/widgets/widgets.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: appBar(context),
        backgroundColor: Colors.transparent,
        brightness: Brightness.light,
        elevation: 0.0,
        centerTitle: true,
      ),
    );
  }
}