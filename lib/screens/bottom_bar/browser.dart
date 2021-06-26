import 'package:cityguide/constants/const.dart';
import 'package:cityguide/models/grid_view_item.dart';
import 'package:cityguide/widegits/build_grid_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Browser extends StatelessWidget {
  const Browser({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text('Browse categories'),
        centerTitle: true,
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: (){})
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2
          ),
          itemCount: 6,
          itemBuilder: (context , index){
            return InkWell(
              onTap: (){
                navigationScreens(context,screens[index]);
              },
              child: BuildGridView(
                image: gridItems[index].image,
                text: gridItems[index].text,
              ),
            );
          },
        ),
      ),
    );
  }
  void navigationScreens(BuildContext context,Widget widget){
    Navigator.push(context, MaterialPageRoute(builder: (ctx)=>widget));
  }
}
