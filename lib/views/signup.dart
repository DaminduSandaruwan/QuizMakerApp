import 'package:flutter/material.dart';
import 'package:quiz_maker/views/signin.dart';
import 'package:quiz_maker/widgets/widgets.dart';
 

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  String name,email, password;
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
        key: _formKey,
        child: Container(
          // color: Colors.blue,
          margin: EdgeInsets.symmetric(horizontal: 24,),
          child: Column(
            children: <Widget>[
              Spacer(),
              TextFormField(
                validator: (val){
                  return val.isEmpty ? "Enter a Name" : null;
                },
                decoration: InputDecoration(
                  hintText: "Name",
                ),
                onChanged: (val){
                  name=val;
                },
              ),
              SizedBox(height: 6,), 
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
              GestureDetector(
                onTap: (){},
                child: Container(                
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
              ),
              SizedBox(height: 18,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Already have an account? ",
                    style: TextStyle(
                      fontSize: 15.5,
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(
                        builder: (context) => SignIn(),
                      ));
                    } ,
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                        fontSize: 15.5,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 80,),
            ],
          ),
        ),
      ),
    );
  }
}