import 'package:firebase_loginpage/screens/signinScreen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(child: Text('Logout'),onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>SigninScreen()));
        },),
      ),
    );
  }
}

