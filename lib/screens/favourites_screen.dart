import 'package:flutter/material.dart';
import 'package:meal_app/models/meal.dart';
import 'package:meal_app/widgets/meal_item.dart';

class FavouritesScreen extends StatelessWidget {
  final List<Meal> favouriteMeals;

  FavouritesScreen(this.favouriteMeals);

  @override
  Widget build(BuildContext context) {
    if (favouriteMeals.isEmpty) {
      return Center(
        child: Text('You have no favourites yet - start adding some!'),
      );
    }
    else{
      return ListView.builder(
        itemBuilder: (ctx, index) {
          final item = favouriteMeals[index];
          return MealItem(
              id: item.id,
              title: item.title,
              imageUrl: item.imageUrl,
              duration: item.duration,
              affordability: item.affordability,
              complexity: item.complexity);
        },
        itemCount: favouriteMeals.length,
      );
    }
  }
}
