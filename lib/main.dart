import 'package:cook_fast/pages/first%20page.dart';
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
          "First Page":(context)=>FirstPage(),
        },

      ),
      designSize: const Size(360, 640),
    );
  }
}
