import '../../domain/entities/coffee_recipe.dart';
import '../../domain/repositories/recipe_repository.dart';
import '../datasources/recipe_local_data_source.dart';
import '../models/coffee_recipe_model.dart';

class RecipeRepositoryImpl implements RecipeRepository {
  final RecipeLocalDataSource localDataSource;

  RecipeRepositoryImpl({required this.localDataSource});

  @override
  Future<List<CoffeeRecipe>> getRecipes() async {
    // 1. Lấy dữ liệu dạng Model từ DataSource
    final models = await localDataSource.getRecipes();

    // 2. Map (Dịch) toàn bộ list Model sang list Entity để trả về
    return models.map((model) => model.toEntity()).toList();
  }

  @override
  Future<void> saveRecipe(CoffeeRecipe recipe) async {
    // 1. Map (Dịch) từ Entity sang Model
    final model = CoffeeRecipeModel.fromEntity(recipe);

    // 2. Gửi Model xuống DataSource để lưu vào Isar
    await localDataSource.saveRecipe(model);
  }

  @override
  Future<void> deleteRecipe(String id) async {
    // Gọi trực tiếp hàm xóa của DataSource dựa trên ID của Domain
    await localDataSource.deleteRecipe(id);
  }
}
