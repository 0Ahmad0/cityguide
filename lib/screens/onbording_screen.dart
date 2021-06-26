import 'package:cityguide/constants/const.dart';
import 'package:cityguide/constants/styles_const.dart';
import 'package:cityguide/models/item_onBoard.dart';
import 'package:cityguide/models/item_onBoard.dart';
import 'package:cityguide/models/item_onBoard.dart';
import 'package:cityguide/models/item_onBoard.dart';
import 'package:cityguide/screens/bottom_bar/bottom_bar.dart';
import 'package:cityguide/widegits/build_button.dart';
import 'package:cityguide/widegits/onbording_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnBordingScreen extends StatefulWidget {
  @override
  _OnBordingScreenState createState() => _OnBordingScreenState();
}

class _OnBordingScreenState extends State<OnBordingScreen> {
  final _numPages = 4;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildCircularIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      margin: EdgeInsets.symmetric(horizontal: 4.0),
      height: isActive ? 12.0 : 8.0,
      width: isActive ? 12.0 : 8.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isActive ? primaryColor : grayColorNormal),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 580,
              child: PageView(
                physics: ClampingScrollPhysics(),
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                children: [
                  OnbordingItems(
                    image: items[0].image,
                    cityName: items[0].cityName,
                    description: items[0].description,
                  ),
                  OnbordingItems(
                    image: items[1].image,
                    cityName: items[1].cityName,
                    description: items[1].description,
                  ),
                  OnbordingItems(
                    image: items[2].image,
                    cityName: items[2].cityName,
                    description: items[2].description,
                  ),
                  OnbordingItems(
                    image: items[3].image,
                    cityName: items[3].cityName,
                    description: items[3].description,
                  ),
                ],
              ),
            ),
            BuildButton(
              text: _currentPage == _numPages - 1 ? 'Get Started' : 'Next',
              onPressed: (){
                _currentPage == _numPages - 1
                    ?Navigator.push(context, MaterialPageRoute(builder: (ctx)=>BottomBarScreen()))
                    :_pageController.nextPage(duration: Duration(milliseconds: 500), curve: Curves.easeOut);
                },
              color: primaryColor,
              textColor: Colors.white,
            ),
            SizedBox(height: 20.0,),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _buildCircularIndicator()),
          ],
        ),
      ),
    );
  }
}
