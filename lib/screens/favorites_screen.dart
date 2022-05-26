import 'package:flutter/material.dart';
import 'package:mealapp/models/meal.dart';
import 'package:mealapp/widgets/meal_iteam.dart';
class FavoriteScreen extends StatelessWidget {
  final List <Meal> favoriteMeals;

   FavoriteScreen( this.favoriteMeals) ;

  @override
  Widget build(BuildContext context) {


    if (favoriteMeals.isEmpty){
    return Center(
      child: Text("no Favorites exist"),
    );}
    else
      {
        return ListView.builder(
          itemBuilder: (ctx, index) {
            return MealItem(
              id: favoriteMeals[index].id,
              imageUrl: favoriteMeals[index].imageUrl,
              title: favoriteMeals[index].title,
              duration: favoriteMeals[index].duration,
              affordability: favoriteMeals[index].affordability,
              complexity: favoriteMeals[index].complexity,

            );
          },
          itemCount: favoriteMeals.length,
        );
      }
  }
}
