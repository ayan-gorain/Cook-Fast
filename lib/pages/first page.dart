import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50,),
            Center(child: Image(image: AssetImage("assets/images/ee.png"),height: 250.h,)),
            SizedBox(height: 30,),
            Stack(
              children:[
              Container(
                height: 700.h,
                width: 300.sh,

                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(400),
                   // topLeft: Radius.circular(70),
                  ),
                ),

              ),
                Container(
                  height: 700.h,
                  width: 100.sh,
                  decoration: BoxDecoration(
                    color: Colors.lightGreenAccent,
                    borderRadius: BorderRadius.only(
                    //  topRight: Radius.circular(400),
                       topLeft: Radius.circular(1000),
                    ),
                  ),
                  child: Column(
                    children : [
                      SizedBox(height: 40,),
                      Padding(
                        padding: const EdgeInsets.only(left: 55),
                        child: Row(
                          children: [
                            Text("W",style: TextStyle(fontSize: 60,fontWeight: FontWeight.w700,fontFamily: 'PTSerif'),),
                            Text("elcome",style: TextStyle(fontSize: 50,fontWeight: FontWeight.w700,fontFamily: 'PTSerif'),),
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text(" To",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w700,fontFamily: 'PTSerif'),),
                      SizedBox(height: 10,),
                      Text(" Cook Fast",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w700,fontFamily: 'PTSerif'),),
                      SizedBox(height: 20,),
                      ElevatedButton.icon(
                          onPressed: (){},
                          icon: Icon(Icons.person_outline,
                          ), label:Text(""),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.green,
                          // side: BorderSide(color: Colors.yellow, width: 5),
                          textStyle: const TextStyle(
                              color: Colors.white, fontSize: 25, fontStyle: FontStyle.normal),
                          shape: BeveledRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10))),
                          shadowColor: Colors.lightBlue,
                        ),
                      ),

                    ],
                  ),
                ),

        ]
            )

          ],
        ),
      ),

    );
  }
}
