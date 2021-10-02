import 'package:flutter/material.dart';
class MybtnSl extends StatelessWidget {


  final String btnTitle;
  final Function onTapFun;
  final Color? backClr;

  MybtnSl({required this.btnTitle,required this.onTapFun,this.backClr});


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){

        onTapFun();
        print("My btn click");
      },
      child: Container(
        color: backClr??Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
        child: Text(btnTitle,style: TextStyle(
          color: Colors.black,
          fontSize: 30,
        )),
      ),
    );
  }
}
