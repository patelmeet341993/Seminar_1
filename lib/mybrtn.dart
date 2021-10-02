import 'package:flutter/material.dart';

class Mybtn extends StatefulWidget {


  final String btnTitle;
  final Function onTapFun;
  final Color? backClr;

  Mybtn({required this.btnTitle,required this.onTapFun,this.backClr});

  @override
  _MybtnState createState() => _MybtnState();
}

class _MybtnState extends State<Mybtn> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){

        widget.onTapFun();
        print("My btn click");
      },
      child: Container(
        color: widget.backClr??Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
        child: Text(widget.btnTitle,style: TextStyle(
          color: Colors.black,
          fontSize: 30,
        )),
      ),
    );
  }
}
