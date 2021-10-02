
import 'package:flutter/material.dart';
import 'package:flutter_app/mybrnsl.dart';
import 'package:flutter_app/mybrtn.dart';

class FirstPage extends StatefulWidget {
  final String pageTitle;

  FirstPage({this.pageTitle=""});

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {


  int count=0,count1=0;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.black38,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              Text("Count : $count",style: TextStyle(
                color: Colors.orange,
                fontSize: 30,
              ),),

              SizedBox(height: 40,),

              Mybtn(btnTitle: "Click",onTapFun: (){
                count++;
                setState(() {

                });
              },),
              SizedBox(height: 100,),
              Text("Count : $count1",style: TextStyle(
                color: Colors.orange,
                fontSize: 30,
              ),),

              SizedBox(height: 40,),

              MybtnSl(
                backClr: Colors.blue,
                btnTitle: "ClickMe",onTapFun: (){
                count1++;
                setState(() {

                });
              },),


            ],
          ),
        ),
      ),
    );
  }
}

