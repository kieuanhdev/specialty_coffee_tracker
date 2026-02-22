import 'package:get_it/get_it.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

// Data
import 'data/models/coffee_recipe_model.dart';
import 'data/datasources/recipe_local_data_source.dart';
import 'data/repositories/recipe_repository_impl.dart';

// Domain
import 'domain/repositories/recipe_repository.dart';
import 'domain/usecases/save_recipe.dart';

final sl = GetIt.instance; // sl viết tắt của Service Locator

Future<void> init() async {
  // 1. External (Khởi tạo Isar Database)
  final dir = await getApplicationDocumentsDirectory();
  final isar = await Isar.open(
    [CoffeeRecipeModelSchema], // Lấy Schema từ file .g.dart đã sinh ra
    directory: dir.path,
  );
  sl.registerLazySingleton<Isar>(() => isar);

  // 2. Data Sources
  // Khi ai đó cần RecipeLocalDataSource, GetIt sẽ trả về RecipeLocalDataSourceImpl và tự động truyền isar vào
  sl.registerLazySingleton<RecipeLocalDataSource>(
    () => RecipeLocalDataSourceImpl(sl()),
  );

  // 3. Repositories
  sl.registerLazySingleton<RecipeRepository>(
    () => RecipeRepositoryImpl(localDataSource: sl()),
  );

  // 4. Use Cases
  sl.registerLazySingleton(() => SaveRecipe(sl()));
}
