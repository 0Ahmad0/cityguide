import 'package:cityguide/constants/styles_const.dart';
import 'package:cityguide/models/restaurant.dart';
import 'package:cityguide/widegits/build_button.dart';
import 'package:cityguide/widegits/build_textFiled.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 190.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/Profile.png'))),
                  child: SafeArea(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            IconButton(
                                icon: Icon(
                                  Icons.arrow_back_rounded,
                                  color: Colors.white,
                                ),
                                onPressed: () => popScreen(context)),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.3,
                            ),
                            Text(
                              'Profile',
                              style: TextStyle(
                                  fontFamily: latoFontN,
                                  color: Colors.white,
                                  fontSize: 18.0),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 100.0, top: 105.0),
                  width: 160.0,
                  height: 160.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/images/td.jpg'
                      )
                    ),
                      shape: BoxShape.circle,
                      color: Color(0xffebebeb),
                      border: Border.all(color: Colors.white, width: 8)),
                )
              ],
            ),
            TextButton(onPressed: (){}, child: Text(
              'Change photo',style: TextStyle(
              fontFamily: latoFontB,
              fontSize: 18.0
            ),
            )),
            SizedBox(height: 20.0,),
            ListView(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              shrinkWrap: true,
              children: [
                BuildTextFiled(
                  icon: Icons.person_outline,
                  hintText: 'Jakub Kowalczyk',
                ),
                SizedBox(height: 20.0,),
                BuildTextFiled(
                  icon: Icons.email_outlined,
                  hintText: 'jakubkowalczyk@mail.com',
                ),
                SizedBox(height: 20.0,),
                BuildTextFiled(
                  icon: Icons.lock_outline,
                  hintText: '***********************',
                ),
              ],
            ),
            SizedBox(height: 40.0,),
            BuildButton(
              text: 'Log out',
              color: Color(0xfff44336),
              textColor: Colors.white,
              onPressed: (){
              },
            )
          ],
        ),
      ),
    );
  }

  void popScreen(BuildContext context) {
    Navigator.pop(context);
  }
}
