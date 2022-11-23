import 'package:cook_fast/pages/first%20page.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/":(context)=>FirstPage(),
        "First Page":(context)=>FirstPage(),
      },

    );
  }
}
