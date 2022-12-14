import 'package:cook_fast/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class forgetpass extends StatelessWidget {
  const forgetpass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body : Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget> [
            Image(image: AssetImage('assets/forPass.png'))
          ],
        ),
      )
    );
  }
}

