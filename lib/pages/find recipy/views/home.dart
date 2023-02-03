import 'package:cook_fast/pages/find%20recipy/views/recipy.dart';
import 'package:cook_fast/pages/find%20recipy/views/recipy_api.dart';
import 'package:cook_fast/pages/find%20recipy/views/widget/recipy_card.dart';
import 'package:flutter/material.dart';


class recfin extends StatefulWidget {
  @override
  _recfinState createState() => _recfinState();
}

class _recfinState extends State<recfin> {
  late List<Recipy> _recipys;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    getRecipes();
  }

  Future<void> getRecipes() async {
    _recipys = await RecipeApi.getRecipe();
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.restaurant_menu),
              SizedBox(width: 10),
              Text('Food Recipe')
            ],
          ),
        ),
        body: _isLoading
            ? Center(child: CircularProgressIndicator())
            : ListView.builder(
          itemCount: _recipys.length,
          itemBuilder: (context, index) {
            return RecipeCard(
                title: _recipys[index].name,
                cookTime: _recipys[index].totalTime,
                rating: _recipys[index].rating.toString(),
                thumbnailUrl: _recipys[index].images);
          },
        ));
  }
}