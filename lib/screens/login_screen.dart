import 'package:cityguide/constants/const.dart';
import 'package:cityguide/constants/styles_const.dart';
import 'package:cityguide/widegits/build_button.dart';
import 'package:cityguide/widegits/build_textFiled.dart';
import 'package:flutter/material.dart';

import 'onbording_screen.dart';

class LoginScreen extends StatelessWidget {
  String email, password;
  GlobalKey<FormState> _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: [
           Container(
             width: double.infinity,
             height: 230.0,
             decoration: BoxDecoration(
               image: DecorationImage(
                 fit: BoxFit.cover,
                 image: AssetImage('assets/images/Login.png')
               )
             ),
             child: SafeArea(
               child: Column(
                 children: [
                   Row(
                     children: [
                       IconButton(icon: Icon(Icons.arrow_back_rounded,color: Colors.white,), onPressed: ()=>popScreen(context))
                     ],
                   ),
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 50.0,vertical: 15.0),
                     child: Center(
                       child: Image.asset('assets/images/logo.png'),
                     ),
                   ),
                 ],
               ),
             ),
           ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Welcome back!',
                textAlign: TextAlign.center,
                style: loginTextStyle,
              ),
            ),
            Form(
              key: _key,
              child: ListView(
                shrinkWrap: true,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: BuildTextFiled(
                      obscure: false,
                      onChanged: (val) {
                        email = val;
                      },
                      validator: (String val) {
                        if (val.isEmpty || !val.contains('@')) {
                          return 'Enter valid email';
                        } else {
                          return null;
                        }
                      },
                      icon: Icons.email_outlined,
                      hintText: 'Your email address',
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: BuildTextFiled(
                      onChanged: (val) {
                        password = val;
                      },
                      validator: (String val) {
                        if (val.isEmpty || val.length < 5) {
                          return 'Enter valid password';
                        } else {
                          return null;
                        }
                      },
                      icon: Icons.lock_outlined,
                      hintText: 'Your password',
                    ),
                  ),
                  SizedBox(
                    height: 22.0,
                  ),
                  BuildButton(
                    text: 'Login',
                    color: Colors.transparent,
                    border: primaryColor,
                    onPressed: (){
                      if(_key.currentState.validate()){
                        navigationScreen(context);
                      }else{

                      }
                    },
                    textColor: primaryColor,
                  ),
                  BuildButton(
                    text: 'Facebook',
                    textColor: Colors.white,
                    onPressed: () {},
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text('Forgot password?',style: forgetTextStyle),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  void popScreen(BuildContext context){
    Navigator.pop(context);
  }
  void navigationScreen(BuildContext context){
    Navigator.push(context, MaterialPageRoute(builder: (ctx)=>OnBordingScreen()));
  }
}
