import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:collection/collection.dart';

final FirebaseFirestore _db = FirebaseFirestore.instance;
var firebaseUser = FirebaseAuth.instance.currentUser;

RecipeModel recipeInfo = RecipeModel("Dummy Recipe Name", "Procedure", []);
List<RecipeModel> recipes = [];

class RecipeModel {
  String recipeName;
  String procedure;
  List ingredients;

  RecipeModel(this.recipeName,
      this.procedure,
      this.ingredients,);

  Map<String, dynamic> toMap() {
    return {
      'recipeName': recipeName,
      'procedure': procedure,
      'ingredients': ingredients,
    };
  }
  RecipeModel.fromDocumentSnapshot(DocumentSnapshot<Map<String, dynamic>> doc)
      :
        recipeName = doc.data()!["name"],
        procedure = doc.data()!["procedure"],
        ingredients = doc.data()!["ingredients"];


}
Future<List<RecipeModel>> getRecipe() async {
  QuerySnapshot<Map<String, dynamic>> snapshot =
  await _db.collection("recipes").get();
  return snapshot.docs
      .map((docSnapshot) => RecipeModel.fromDocumentSnapshot(docSnapshot)).toList();

}

initRetrivalRecipe() async {
  recipes = await getRecipe();

  List availableIngredients = [];

  availableIngredients.add("cucumber");
  availableIngredients.add("bread");
  availableIngredients.add("tomato");



  Function eq = const ListEquality().equals;
  print(eq(recipes[1].ingredients, availableIngredients));
  for (int i = 0; i < availableIngredients.length-1; i++)
    {

      if(eq(recipes[i].ingredients, availableIngredients))
        {
          print("Dish Name : ;${recipes[i].recipeName}\nRecipe : ${recipes[i].procedure}");
        }
    }


}