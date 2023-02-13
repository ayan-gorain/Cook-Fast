import 'package:cook_fast/Models/recipe_model.dart';
import 'package:cook_fast/pages/what%20in%20fridge/yyy.dart';
import 'package:flutter/material.dart';

import '../../utils/routes.dart';



class home2 extends StatelessWidget {

  final List<RecipeModel> recipeList;
  const home2({Key? key, required this.recipeList}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(

          centerTitle: true,
          title: Text("Dynamic Recipy"),
        ),
        body: ListView.builder(
          itemCount: recipeList.length,
            itemBuilder:(context,index){

                return Container(
            height: 276,

            margin: EdgeInsets.all(8),
            child: Card(
              child: ListTile(
                title: MaterialButton(
                  minWidth:350,
                  height: 260,
                  onPressed: () {
                    //Navigator.of(context).push(MaterialPageRoute(builder: (context)=>gtaaa()));
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => gtaaa(recipeName: recipeList[index].recipeName, recipeProceedure: recipeList[index].procedure, recipeIng: recipeList[index].ingredients)));
                  },
                  color: Colors.deepPurple[200],

                  shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(50)),
                  child: Text('${recipeList[index].recipeName}',style: TextStyle(
                  fontSize: 50,fontWeight: FontWeight.w700,fontFamily: 'Dancing',
                    color: Colors.black
                  ),),
                ),

              ),
            ),
          );
        }),
      ),

    );

  }
}
