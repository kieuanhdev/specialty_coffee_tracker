import 'package:specialty_coffee_tracker/domain/entities/coffee_recipe.dart';
import 'package:specialty_coffee_tracker/domain/repositories/recipe_repository.dart';

class SaveRecipe {
  final RecipeRepository repository;

  SaveRecipe(this.repository);

  Future<void> call(CoffeeRecipe recipe) async {
    if (recipe.stages.isEmpty) {
      throw ArgumentError('Công thức phải có ít nhất một giai đoạn pha chế.');
    }

    if (recipe.coffeeAmountInGrams <= 0) {
      throw ArgumentError('Lượng cà phê phải lớn hơn 0.');
    }

    return await repository.saveRecipe(recipe);
  }
}
