import 'dart:convert';
import 'package:cook_fast/pages/find%20recipy/views/recipy.dart';
import 'package:http/http.dart' as http;

class RecipeApi {
  static Future<List<Recipy>> getRecipe() async {
    var uri = Uri.https('yummly2.p.rapidapi.com', '/feeds/list',
        {"limit": "18", "start": "0", "tag": "list.recipe.popular"});

    final response = await http.get(uri, headers: {
      "X-RapidAPI-Key": "2ca58b8c6cmshfe015d867137d96p14035djsn3d7cc59bc463",
      "x-rapidapi-host": "yummly2.p.rapidapi.com",
      "useQueryString": "true"
    });

    Map data = jsonDecode(response.body);
    List _temp = [];

    for (var i in data['feed']) {
      _temp.add(i['content']['details']);
    }

    return Recipy.recipesFromSnapshot(_temp);
  }
}