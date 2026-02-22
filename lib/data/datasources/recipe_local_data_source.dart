import 'package:isar/isar.dart';
import '../models/coffee_recipe_model.dart';

// 1. Giao diện (Hợp đồng) cho Data Source
abstract class RecipeLocalDataSource {
  Future<List<CoffeeRecipeModel>> getRecipes();
  Future<void> saveRecipe(CoffeeRecipeModel recipe);
  Future<void> deleteRecipe(String domainId);
}

// 2. Triển khai (Implementation) thực tế sử dụng Isar
class RecipeLocalDataSourceImpl implements RecipeLocalDataSource {
  final Isar isar; // Nhận instance của Isar thông qua Dependency Injection

  RecipeLocalDataSourceImpl(this.isar);

  @override
  Future<List<CoffeeRecipeModel>> getRecipes() async {
    // Lấy toàn bộ danh sách công thức đã lưu
    return await isar.coffeeRecipeModels.where().findAll();
  }

  @override
  Future<void> saveRecipe(CoffeeRecipeModel recipe) async {
    // Mọi thao tác ghi/sửa/xóa trong Isar đều phải đặt trong writeTxn (Transaction)
    await isar.writeTxn(() async {
      await isar.coffeeRecipeModels.put(recipe);
    });
  }

  @override
  Future<void> deleteRecipe(String domainId) async {
    await isar.writeTxn(() async {
      // Tìm công thức theo domainId (khóa của tầng Domain) và xóa nó
      await isar.coffeeRecipeModels
          .filter()
          .domainIdEqualTo(domainId)
          .deleteAll();
    });
  }
}
