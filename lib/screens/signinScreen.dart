import 'dart:html';

import 'package:firebase_loginpage/screens/signupScreen.dart';
import 'package:firebase_loginpage/utils/color_utils.dart';
import 'package:flutter/material.dart';

import '../reusableWidgets/reusableWidgets.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<SigninScreen> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              hexStringToColor("CB2B93"),
              hexStringToColor("9546C4"),
              hexStringToColor("5E61F4")
            ], begin: Alignment.center, end: Alignment.bottomCenter)),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
              20, MediaQuery
                .of(context)
                .size
                .height * 0.2, 20, 0,), child: Column(children: [
            logoWidget("assets/images/SeekPng.com_tree-logo-png_1427589.png"),
            SizedBox(height: 30,),
            reusableTextField("Enter Username", Icons.person_outlined, false, _emailTextController),
            SizedBox(height: 20,),
            reusableTextField("Enter Password", Icons.lock_outlined, true, _passwordTextController),
            SizedBox(height: 20,),
            signInSignUpButton(context,true, (){}),
            signUpOption()
          ],),
          ),
        ),
      ),
    );
  }
Row signUpOption (){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Text("Dont hve account?",style: TextStyle(color: Colors.white),),
        GestureDetector(
          onTap: (){
            Navigator.push(context,
            MaterialPageRoute(builder: (context)=>SignUpScreen()));
          },
          child: Text("Sign Up", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        )


      ],
    );
}
}
