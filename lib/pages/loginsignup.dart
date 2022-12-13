import 'package:cook_fast/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

class loginsignup extends StatelessWidget {
  const loginsignup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: 450.h,
              width: 300.sh,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                   bottomLeft: Radius.circular(70),
                   bottomRight: Radius.circular(70),
                ),
              ),
              child: VStack([
                Center(child: Image.asset('assets/images/lohh.png'),),
                Center(child: Text("Hello again!!",style: TextStyle(
                    fontSize: 50,fontWeight: FontWeight.w700,fontFamily: 'PTSerif'
                ),)),
                SizedBox(height: 40,),
                Padding(
                  padding: const EdgeInsets.only(left: 100),
                  child: Text("Welcome back",style: TextStyle(
                      fontSize: 30,fontWeight: FontWeight.w700,fontFamily: 'PTSerif'
                  ),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 90),
                  child: Text("You have missed",style: TextStyle(
                      fontSize: 30,fontWeight: FontWeight.w700,fontFamily: 'PTSerif'
                  ),),
                ),
              ]
              ),
            ),
            Column(

                children: [
                  SizedBox(height: 620,),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: MaterialButton(
                      minWidth:350,
                      height: 60,
                      onPressed: () {
                        Navigator.pushNamed(context, MyRoutes.loginRoute );
                      },
                      color: Colors.yellow,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(40)),
                      child: Text("Login",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          )),
                    ),
                  ),
                   SizedBox(height: 20,),
                   Padding(
                     padding: const EdgeInsets.only(left: 30),
                     child: MaterialButton(
                      minWidth:350,
                      height: 60,
                      onPressed: () {
                        Navigator.pushNamed(context, MyRoutes.signupRoute );
                      },
                      color: Colors.yellow,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(50)),
                      child: Text("Sign up",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          )),
                  ),
                   ),
                ],
            ),
          ],
        ),
      ),
    );
  }
}
