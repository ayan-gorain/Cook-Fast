import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:collection/collection.dart';

final FirebaseFirestore _db = FirebaseFirestore.instance;
var firebaseUser = FirebaseAuth.instance.currentUser;

RecipeModel recipeInfo = RecipeModel("Dummy Recipe Name", "Procedure", []);
List<RecipeModel> recipes = [];
List<RecipeModel> recipesFound = [];

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

initRetrivalRecipe(availableIngredients) async {
  recipesFound = [];
  print("you : $availableIngredients ");
  recipes = await getRecipe();
  print(recipes[0].ingredients);
  print(availableIngredients);
  Function eq = const ListEquality().equals;
  Function deepEq =  const DeepCollectionEquality.unordered().equals;
  print(deepEq(recipes[0].ingredients, availableIngredients));

  List recipes1 = [];

  for (int i = 0; i < recipes.length; i++)
    {

      if(deepEq(recipes[i].ingredients, availableIngredients))
        {
          print("Dish Name : ;${recipes[i].recipeName}\nRecipe : ${recipes[i].procedure}");
          recipes1.add("${recipes[i].recipeName} | ${recipes[i].procedure}");
          recipesFound.add(RecipeModel(recipes[i].recipeName, recipes[i].procedure, recipes[i].ingredients));

        }
      else
        {
          print("Not this Recipe");
        }
    }
  print("Ended $recipes1");
  return recipesFound;
}