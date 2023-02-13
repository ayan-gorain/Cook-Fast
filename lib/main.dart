import 'package:cook_fast/pages/bmi/bmipage.dart';
import 'package:cook_fast/pages/drawer/aboutus.dart';
import 'package:cook_fast/pages/find%20recipy/views/home.dart';
import 'package:cook_fast/pages/common%20page/first%20page.dart';
import 'package:cook_fast/pages/what%20in%20fridge/fliterpage.dart';
import 'package:cook_fast/pages/common%20page/frogetPass.dart';
import 'package:cook_fast/pages/common%20page/loginpage.dart';
import 'package:cook_fast/pages/common%20page/loginsignup.dart';
import 'package:cook_fast/pages/common%20page/onboarding.dart';
import 'package:cook_fast/pages/common%20page/otpverifypage.dart';
import 'package:cook_fast/pages/common%20page/signup.dart';
import 'package:cook_fast/pages/common%20page/verify.dart';
import 'package:cook_fast/pages/common%20page/welcomepage.dart';
import 'package:cook_fast/pages/what%20in%20fridge/homepage1.dart';
import 'package:cook_fast/pages/what%20in%20fridge/yyy.dart';
import 'package:cook_fast/utils/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (BuildContext context, Widget? child) => MaterialApp(
        routes: {
          "/":(context)=> FirstPage(),
          MyRoutes.FirstPageRoute:(context)=>FirstPage(),
          MyRoutes.loginsignupRoute:(context)=>loginsignup(),
          MyRoutes.signupRoute:(context)=>signup(),
          MyRoutes.loginRoute:(context)=>login(),
          MyRoutes.otpRoute:(context)=>otp(),
          MyRoutes.verifyRoute:(context)=>verify(),
          MyRoutes.onboaRoute:(context)=>Onboardingpage(),
          MyRoutes.forgetpassRoute:(context)=>forgetpass(),
          MyRoutes.welco11Route:(context)=>welco(),
          MyRoutes.FilterRoute:(context)=>filter(),
          MyRoutes.HomeScreenRoute:(context)=>HomeScreen(),
          MyRoutes.recfinRoute:(context)=>recfin(),
          MyRoutes.aboutusRoute:(context)=>aboutus(),
         // MyRoutes.home2Route:(context)=>home2(),
         // MyRoutes.gtaaaRoute:(context)=>gtaaa(),
        },

      ),
      designSize: const Size(360, 640),
    );
  }
}
