import 'package:flutter/material.dart';
import 'package:quiz_maker/widgets/widgets.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final _formKey = GlobalKey<FormState>();
  String email, password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: appBar(context),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        brightness: Brightness.light,
      ),
      body: Form(
        child: Container(
          // color: Colors.blue,
          margin: EdgeInsets.symmetric(horizontal: 24,),
          child: Column(
            children: <Widget>[
              Spacer(),
              TextFormField(
                validator: (val){
                  return val.isEmpty ? "Enter Correct Email Address" : null;
                },
                decoration: InputDecoration(
                  hintText: "Email",
                ),
                onChanged: (val){
                  email=val;
                },
              ),
              SizedBox(height: 6,), 
              TextFormField(
                validator: (val){
                  return val.isEmpty ? "Enter your Password" : null;
                },
                decoration: InputDecoration(
                  hintText: "Password",
                ),
                onChanged: (val){
                  password=val;
                },
              ),
              SizedBox(height: 25,),
              Container(
                
                padding: EdgeInsets.symmetric(vertical:18),
                // height: 50,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(30),
                ),
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width - 48,
                child: Text(
                  "Sign In",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(height: 80,),
            ],
          ),
        ),
      ),
    );
  }
}