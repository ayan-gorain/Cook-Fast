import 'package:flutter/material.dart';
class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Cook Fast"),
      ),
      body: SingleChildScrollView(
        child:Column(
          children: [
            SizedBox(height: 200,),
            Center(child: Text("Welcome to cook Fast app",style: TextStyle(fontSize: 40),)),
          ],
        ),
      ),
    );
  }
}
