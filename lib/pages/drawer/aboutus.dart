import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class aboutus extends StatelessWidget {
  const aboutus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(

          children: [
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Text('About Us',style: TextStyle(
                fontSize: 80.w,fontWeight: FontWeight.w700,fontFamily: 'Dancing',
              ),),
            ),
            SizedBox(height: 30,),
            Align(
              alignment: Alignment.center,
              child: Text('An app for Android and iOS called Cook Fast. \nWith the help of this application,we may choose what to make from the ingredients we already have at home.\nYou will be presented various recipes from various cuisines along with their nutritional value by pickingthe ingredients. \nThere are times when you simply dont know what to cook, or perhaps youre in a hurryand want to make a meal as quickly as you can.'
              ,style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,

                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
