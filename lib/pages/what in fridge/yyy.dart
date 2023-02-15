import 'package:flutter/material.dart';

class gtaaa extends StatelessWidget {
  final String recipeName;
  final String recipeProceedure;
  final List recipeIng;
  const gtaaa({Key? key, required this.recipeName, required this.recipeProceedure, required this.recipeIng}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Instructions'),
        centerTitle: true,
        ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 30,),
            Text("Name : $recipeName",
              textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),),
            SizedBox(height: 30,),
            Text("Instructions", textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),),
            SizedBox(height: 30,),
            Text("$recipeProceedure", textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
              ),),
          ],
        ),
      )
    );
  }
}
