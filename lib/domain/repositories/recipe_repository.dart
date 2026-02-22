import 'package:specialty_coffee_tracker/domain/entities/coffee_recipe.dart';

abstract class RecipeRepository {
  Future<List<CoffeeRecipe>> getRecipes();
  Future<void> saveRecipe(CoffeeRecipe recipe);
  Future<void> deleteRecipe(String id);
}
