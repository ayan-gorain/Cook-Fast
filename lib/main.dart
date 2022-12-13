import 'package:cook_fast/pages/first%20page.dart';
import 'package:cook_fast/pages/loginpage.dart';
import 'package:cook_fast/pages/loginsignup.dart';
import 'package:cook_fast/pages/otpverifypage.dart';
import 'package:cook_fast/pages/signup.dart';
import 'package:cook_fast/pages/verify.dart';
import 'package:cook_fast/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
void main(){
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (BuildContext context, Widget? child) => MaterialApp(
        routes: {
          "/":(context)=>FirstPage(),
          MyRoutes.FirstPageRoute:(context)=>FirstPage(),
          MyRoutes.loginsignupRoute:(context)=>loginsignup(),
          MyRoutes.signupRoute:(context)=>signup(),
          MyRoutes.loginRoute:(context)=>login(),
          MyRoutes.otpRoute:(context)=>otp(),
          MyRoutes.verifyRoute:(context)=>verify(),
        },

      ),
      designSize: const Size(360, 640),
    );
  }
}
