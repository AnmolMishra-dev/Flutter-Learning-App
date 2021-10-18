import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learning/CONST/color.dart';
import 'package:flutter_learning/what_is_flutter.dart';
import 'package:shimmer/shimmer.dart';

import 'Rest_Api/apihome.dart';
import 'WIDGET/widget_home.dart';
import 'installation.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
          leading: Icon(CupertinoIcons.sidebar_left,color: MyColor.TheamColor),
          title: Shimmer.fromColors(
            baseColor:MyColor.TheamColor,
            highlightColor: Color(0XFF91a0b8),
            child: Text(
              'Flutter Learning App',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30),

            ),
          ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(Icons.share,color: MyColor.TheamColor,),
          )
        ],

      ),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              padding: EdgeInsets.only(top: 30,left: 22,right: 15,bottom: 20),

              child: Wrap(
                spacing: 25,
                runSpacing: 20,
                  alignment:WrapAlignment.center,


                children:[
                InkWell(onTap: (){

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Flutter()),
                  );
                },
                  child: Container(
                    decoration: BoxDecoration(

                        border: Border.all(color:MyColor.TheamColor,width: 2.0)


                    ),
                    width: MediaQuery.of(context).size.width*.85,
                    height: 90,
                    child:Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(width: 40,height: 40,child: Image.asset("assets/thinking.png",color: MyColor.TheamColor,),),
                          Text("WHAT IS FLUTTER ?",style: TextStyle(color: MyColor.TheamColor,fontWeight: FontWeight.bold),)

                        ],),
                    ) ,),
                ),
                  InkWell(onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Installation()),
                    );

                  },
                    child: Container(
                      decoration: BoxDecoration(

                          border: Border.all(color:MyColor.TheamColor,width: 2.0)


                      ),
                      width: MediaQuery.of(context).size.width*.4,
                      height: 80,
                      child:Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(width: 40,height: 40,child: Image.asset("assets/maintenance.png",color: MyColor.TheamColor,),),
                            Text("INSTALLATION ",style: TextStyle(color: MyColor.TheamColor,fontWeight: FontWeight.bold),)

                          ],),
                      ) ,),
                  ),
                  Container(
                    decoration: BoxDecoration(

                        border: Border.all(color:MyColor.TheamColor,width: 2.0)


                    ),
                    width: MediaQuery.of(context).size.width*.4,
                    height: 80,
                    child:Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(width: 40,height: 40,child: Image.asset("assets/sdk.png",color: MyColor.TheamColor,),),
                          Text("SDK",style: TextStyle(color: MyColor.TheamColor,fontWeight: FontWeight.bold),)

                        ],),
                    ) ,),

                  InkWell(onTap: (){
                   Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>   WidgetHome()),
                    );
                  },
                    child: Container(
                      decoration: BoxDecoration(

                          border: Border.all(color:MyColor.TheamColor,width: 2.0)


                      ),
                      width: MediaQuery.of(context).size.width*.4,
                      height: 80,
                      child:Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                          Container(width: 40,height: 40,child: Image.asset("assets/settings.png",color: MyColor.TheamColor,),),
                            Text("WIDGET",style: TextStyle(color: MyColor.TheamColor,fontWeight: FontWeight.bold),)

                        ],),
                      ) ,),
                  ),
                  Container(
                    decoration: BoxDecoration(

                        border: Border.all(color:MyColor.TheamColor,width: 2.0)


                    ),
                    width: MediaQuery.of(context).size.width*.4,
                    height: 80,
                    child:Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(width: 40,height: 40,child: Image.asset("assets/authentication.png",color: MyColor.TheamColor,),),
                          Text("AUTHENTICATION ",style: TextStyle(color: MyColor.TheamColor,fontWeight: FontWeight.bold),)

                        ],),
                    ) ,),
                  InkWell(onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ApiHome()),
                    );
                  },
                    child: Container(
                      decoration: BoxDecoration(

                          border: Border.all(color:MyColor.TheamColor,width: 2.0)


                      ),
                      width: MediaQuery.of(context).size.width*.4,
                      height: 80,
                      child:Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
    Container(width: 40,height: 40,child: Image.asset("assets/api.png",color: MyColor.TheamColor,),),
                            Text("REST API ",style: TextStyle(color: MyColor.TheamColor,fontWeight: FontWeight.bold),)

                          ],),
                      ) ,),
                  ),
                  Container(
                    decoration: BoxDecoration(

                        border: Border.all(color:MyColor.TheamColor,width: 2.0)


                    ),
                    width: MediaQuery.of(context).size.width*.4,
                    height: 80,
                    child:Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(width: 40,height: 40,child: Image.asset("assets/database.png",color: MyColor.TheamColor,),),
                          Text("DATABASE",style: TextStyle(color: MyColor.TheamColor,fontWeight: FontWeight.bold),)

                        ],),
                    ) ,),
                  Container(
                    decoration: BoxDecoration(

                        border: Border.all(color:MyColor.TheamColor,width: 2.0)


                    ),
                    width: MediaQuery.of(context).size.width*.4,
                    height: 80,
                    child:Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(width: 40,height: 40,child: Image.asset("assets/picture.png",color: MyColor.TheamColor,),),
                          Text("USER INTERFACE",style: TextStyle(color: MyColor.TheamColor,fontWeight: FontWeight.bold),)

                        ],),
                    ) ,),
                  Container(
                    decoration: BoxDecoration(

                        border: Border.all(color:MyColor.TheamColor,width: 2.0)


                    ),
                    width: MediaQuery.of(context).size.width*.4,
                    height: 80,
                    child:Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(width: 40,height: 40,child: Image.asset("assets/animation.png",color: MyColor.TheamColor,),),
                          Text("ANIMATION",style: TextStyle(color: MyColor.TheamColor,fontWeight: FontWeight.bold)),

                        ],),
                    ) ,),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color:MyColor.TheamColor,width: 2.0)
                    ),
                    width: MediaQuery.of(context).size.width*.4,
                    height: 80,
                    child:Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(width: 40,height: 40,child: Image.asset("assets/boxes.png",color: MyColor.TheamColor,),),
                          Text("PACKAGE",style: TextStyle(color: MyColor.TheamColor,fontWeight: FontWeight.bold)),

                        ],),
                    ) ,),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color:MyColor.TheamColor,width: 2.0)
                    ),
                    width: MediaQuery.of(context).size.width*.4,
                    height: 80,
                    child:Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(width: 40,height: 40,child: Image.asset("assets/business.png",color: MyColor.TheamColor,),),
                          Text("OVERALL",style: TextStyle(color: MyColor.TheamColor,fontWeight: FontWeight.bold)),

                        ],),
                    ) ,),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color:MyColor.TheamColor,width: 2.0)
                    ),
                    width: MediaQuery.of(context).size.width*.4,
                    height: 80,
                    child:Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.flutter_dash,color: MyColor.TheamColor,size: 40,),
                          // Container(width: 40,height: 40,child: Image.asset("assets/business.png",color: MyColor.TheamColor,),),
                          Text("Firebase",style: TextStyle(color: MyColor.TheamColor,fontWeight: FontWeight.bold)),

                        ],),
                    ) ,),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color:MyColor.TheamColor,width: 2.0)
                    ),
                    width: MediaQuery.of(context).size.width*.4,
                    height: 80,
                    child:Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.flutter_dash,color: MyColor.TheamColor,size: 40,),
                          // Container(width: 40,height: 40,child: Image.asset("assets/business.png",color: MyColor.TheamColor,),),
                          Text("GetX",style: TextStyle(color: MyColor.TheamColor,fontWeight: FontWeight.bold)),

                        ],),
                    ) ,),

                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color:MyColor.TheamColor,width: 2.0)
                    ),
                    width: MediaQuery.of(context).size.width*.4,
                    height: 80,
                    child:Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.flutter_dash,color: MyColor.TheamColor,size: 40,),
                          // Container(width: 40,height: 40,child: Image.asset("assets/business.png",color: MyColor.TheamColor,),),
                          Text("ReduX",style: TextStyle(color: MyColor.TheamColor,fontWeight: FontWeight.bold)),

                        ],),
                    ) ,),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color:MyColor.TheamColor,width: 2.0)
                    ),
                    width: MediaQuery.of(context).size.width*.4,
                    height: 80,
                    child:Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.flutter_dash,color: MyColor.TheamColor,size: 40,),
                          // Container(width: 40,height: 40,child: Image.asset("assets/business.png",color: MyColor.TheamColor,),),
                          Text("Provider ",style: TextStyle(color: MyColor.TheamColor,fontWeight: FontWeight.bold)),

                        ],),
                    ) ,),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color:MyColor.TheamColor,width: 2.0)
                    ),
                    width: MediaQuery.of(context).size.width*.4,
                    height: 80,
                    child:Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.flutter_dash,color: MyColor.TheamColor,size: 40,),
                          // Container(width: 40,height: 40,child: Image.asset("assets/business.png",color: MyColor.TheamColor,),),
                          Text("VelocityX ",style: TextStyle(color: MyColor.TheamColor,fontWeight: FontWeight.bold)),

                        ],),
                    ) ,),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color:MyColor.TheamColor,width: 2.0)
                    ),
                    width: MediaQuery.of(context).size.width*.4,
                    height: 80,
                    child:Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.flutter_dash,color: MyColor.TheamColor,size: 40,),
                          // Container(width: 40,height: 40,child: Image.asset("assets/business.png",color: MyColor.TheamColor,),),
                          Text("bloc",style: TextStyle(color: MyColor.TheamColor,fontWeight: FontWeight.bold)),

                        ],),
                    ) ,),

                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color:MyColor.TheamColor,width: 2.0)
                    ),
                    width: MediaQuery.of(context).size.width*.85,
                    height: 90,
                    child:Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(width: 40,height: 40,child: Image.asset("assets/interview.png",color: MyColor.TheamColor,),),
                          Text("INTERVIEW QUESTIONS",style: TextStyle(color: MyColor.TheamColor,fontWeight: FontWeight.bold)),

                        ],),
                    ) ,),
                ],
              ),





            ),
          ),



    );
  }
}
