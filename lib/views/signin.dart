import 'package:flutter/material.dart';
import 'package:quiz_maker/services/auth.dart';
import 'package:quiz_maker/views/home.dart';
import 'package:quiz_maker/views/signup.dart';
import 'package:quiz_maker/widgets/widgets.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final _formKey = GlobalKey<FormState>();
  String email, password;
  AuthService authService = new AuthService();
  bool isLoading = false;
  
  signIn() async{
    if(_formKey.currentState.validate()) {
      setState(() {
        isLoading=true;
      });
      await authService.signInEmailAndPass(email, password).then((value) {
        if(value!= null){
              setState(() {
            isLoading=false;
          });
          Navigator.pushReplacement(context, MaterialPageRoute(
            builder: (context) => Home(),
          ));
        }
      });     
    }
  }

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
      body: isLoading ? Container(
        child: Center(
          child: CircularProgressIndicator(),
        ),
      ): Form(
        key: _formKey,
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
              GestureDetector(
                onTap:(){
                  signIn();
                },
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
                    "Don't have an account? ",
                    style: TextStyle(
                      fontSize: 15.5,
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(
                        builder: (context)=>SignUp()
                      ));
                    },
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                        fontSize: 15.5,
                        color: Colors.blue ,
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