import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:specialty_coffee_tracker/domain/entities/coffee_recipe.dart';
import 'package:specialty_coffee_tracker/domain/entities/timer_stage.dart';
import 'package:specialty_coffee_tracker/domain/repositories/recipe_repository.dart';
import 'package:specialty_coffee_tracker/domain/usecases/save_recipe.dart';

class MockRecipeRepository extends Mock implements RecipeRepository {}

void main() {
  late SaveRecipe usecase;
  late MockRecipeRepository mockRepository;

  setUp(() {
    mockRepository = MockRecipeRepository();
    usecase = SaveRecipe(mockRepository);
  });

  const tTimerStage = TimerStage(
    name: 'Ủ cà phê (Bloom)',
    durationInSeconds: 30,
    waterAmountInMl: 30,
  );

  const tValidRecipe = CoffeeRecipe(
    id: '1',
    name: 'Phin Truyền Thống',
    brewMethod: 'Phin',
    coffeeAmountInGrams: 20.0,
    waterTemperatureInCelsius: 95.0,
    stages: [tTimerStage],
    tastingNotes: 'Đậm đà, hậu ngọt',
  );

  // Dữ liệu giả lập cho nhánh Edge Case (ví dụ: setup sai công thức Cold Brew)
  const tInvalidRecipe = CoffeeRecipe(
    id: '2',
    name: 'Cold Brew Lỗi',
    brewMethod: 'Cold Brew',
    coffeeAmountInGrams: 0.0, // Lỗi: lượng cafe = 0
    waterTemperatureInCelsius: 20.0,
    stages: [], // Lỗi: không có giai đoạn nào
  );

  test('nên gọi hàm saveRecipe từ repository khi dữ liệu hợp lệ', () async {
    // Arrange (Chuẩn bị)
    when(
      () => mockRepository.saveRecipe(tValidRecipe),
    ).thenAnswer((_) async => Future.value());

    // Act (Hành động)
    await usecase(tValidRecipe);

    // Assert (Kiểm tra)
    verify(() => mockRepository.saveRecipe(tValidRecipe)).called(1);
    verifyNoMoreInteractions(mockRepository);
  });

  test(
    'nên ném ra Exception khi lượng cà phê <= 0 hoặc không có giai đoạn pha',
    () async {
      // Act
      final call = usecase.call;

      // Assert
      expect(() => call(tInvalidRecipe), throwsA(isA<ArgumentError>()));
      // Đảm bảo repository KHÔNG được gọi nếu validation thất bại
      verifyZeroInteractions(mockRepository);
    },
  );
}
