import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learning/CONST/color.dart';
import 'package:shimmer/shimmer.dart';
class AppBarWidget extends StatefulWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  _AppBarWidgetState createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  List app=[
    {
      "image":"https://drive.google.com/uc?export=view&id=1ltfZzlUddhPNG5DUAxgXzouEuxkfTjIl",
      "heading": "AppBar ",
      "content": "AppBar is usually the topmost component of the app (or sometimes the bottom-most), it contains the toolbar and some other common action buttons. As all the components in a flutter application is a widget or a combination of widgets. So AppBar is also a built-in class or widget in flutter which gives the functionality of the AppBar out of the box. The AppBar widget is based on Material Design and much of the information is already provided by other classes like MediaQuery, Scaffold as to where the content of the AppBar should be placed. Though the AppBar class is very flexible and can be easily customized, we can also use SilverAppBar widget which gives scrollable functionality to the app bar. Or we can create our own custom app bar from scratch."

    },
    {
      "image":"https://drive.google.com/uc?export=view&id=1KMmMnBLhNlv3ob5pAeFct0BN6W2OYfFF",
      "heading": "Key Properties of Appbar Widget:",
      "content": "actions: This property takes in a list of widgets as a parameter to be displayed after the title if the AppBar is a row.\ntitle: This property usually takes in the main widget as a parameter to be displayed in the AppBar.\nbackgroundColor: This property is used to add colors to the background of the Appbar.\nelevation: This property is used to set the z-coordinate at which to place this app bar relative to its parent.\nshape: This property is used to give shape to the Appbar and manage its shadow.",

    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: InkWell(onTap: (){
          Navigator.pop(context);
        },child: Icon(CupertinoIcons.backward,color: MyColor.TheamColor,)),
        title: Shimmer.fromColors(
          baseColor:MyColor.TheamColor,
          highlightColor: Color(0XFF91a0b8),
          child: Text(
            'Widgets',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30),

          ),
        ),
        centerTitle: true,
        actions: [
          Shimmer.fromColors(
            baseColor:MyColor.TheamColor,
            highlightColor: Color(0XFF91a0b8),
            child: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: InkWell(onTap: (){

                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => Installation()),
                // );
              },child: Icon(CupertinoIcons.forward)),
            ),
          ),

        ],

      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(

          child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: app.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 20,),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(child: Text(app[index]["heading"],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black),),),

                      SizedBox(height: 15,),



                      Container(child: Text(app[index]["content"],style: TextStyle(fontSize: 18,color: Colors.black),),),
                      SizedBox(height: 15,),

                      Image.network(app[index]["image"])

                    ],
                  ),
                );}),

        ),
      ),

    );
  }
}
