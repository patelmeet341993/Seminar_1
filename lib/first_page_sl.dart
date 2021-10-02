import 'package:flutter/material.dart';

class FirstPageSl extends StatelessWidget {
  int count=0;

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

              InkWell(
                onTap: (){
                  count++;
                  print("Click : $count");

                },
                child: Container(
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                  child: Text("Click",style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                  )),
                ),
              )



            ],
          ),
        ),
      ),
    );
  }
}
