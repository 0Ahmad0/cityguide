import 'package:cityguide/constants/const.dart';
import 'package:cityguide/constants/styles_const.dart';
import 'package:cityguide/widegits/build_button.dart';
import 'package:flutter/material.dart';

import 'login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/Welcome.png'))),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Image.asset('assets/images/logo.png'),
                    ),
                    SizedBox(height: 50.0,),
                    Text(
                      ' Explore the best places of the world\'s most vibrant cities!',
                      style: welcomeTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50.0,),
              Column(
                children: [
                  BuildButton(
                    color: Colors.white,
                    text: 'Login',
                    textColor: primaryColor,
                    onPressed: ()=>navigationScreen(context),

                  ),
                  BuildButton(
                    color: Colors.transparent,
                    text: 'Register',
                    textColor: Colors.white,
                    onPressed: (){},
                    border: Colors.white,
                  ),
                ],
              ),
              SizedBox(height: 20.0,),
            ],
          ),
        ),
      ),
    );
  }
  void navigationScreen(BuildContext context){
    Navigator.push(context, MaterialPageRoute(builder: (ctx)=>LoginScreen()));
  }
}


