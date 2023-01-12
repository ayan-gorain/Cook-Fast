import 'package:cook_fast/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50,),
            Image.asset('assets/images/1stpage.png'),
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
                      SizedBox(height: 75,),
                      Padding(
                        padding: const EdgeInsets.only(left: 100),
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

                      Padding(
                        padding: const EdgeInsets.only(left: 300),
                        child: FloatingActionButton(
                          child: Icon(Icons.arrow_right_sharp,color: Colors.green,size: 30,),
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.white,
                          onPressed: () {
                            Navigator.pushNamed(context,MyRoutes.loginsignupRoute);
                          },
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
