import 'package:isar/isar.dart';
import '../../domain/entities/coffee_recipe.dart';
import '../../domain/entities/timer_stage.dart';

// Dòng này bắt buộc phải có để Isar tự động sinh code
part 'coffee_recipe_model.g.dart';

@embedded
class TimerStageModel {
  String? name;
  int? durationInSeconds;
  int? waterAmountInMl;

  // Ánh xạ từ Domain Entity sang Data Model
  static TimerStageModel fromEntity(TimerStage entity) {
    return TimerStageModel()
      ..name = entity.name
      ..durationInSeconds = entity.durationInSeconds
      ..waterAmountInMl = entity.waterAmountInMl;
  }

  // Ánh xạ từ Data Model ngược lại Domain Entity
  TimerStage toEntity() {
    return TimerStage(
      name: name ?? '',
      durationInSeconds: durationInSeconds ?? 0,
      waterAmountInMl: waterAmountInMl ?? 0,
    );
  }
}

@collection
class CoffeeRecipeModel {
  Id id = Isar.autoIncrement; // Isar bắt buộc dùng khóa chính là số nguyên

  @Index(unique: true)
  String? domainId; // Khóa phụ để map với ID dạng chuỗi (String) của Domain Entity

  String? name;
  String? brewMethod;
  double? coffeeAmountInGrams;
  double? waterTemperatureInCelsius;

  List<TimerStageModel>? stages;
  String? tastingNotes;

  static CoffeeRecipeModel fromEntity(CoffeeRecipe entity) {
    return CoffeeRecipeModel()
      ..domainId = entity.id
      ..name = entity.name
      ..brewMethod = entity.brewMethod
      ..coffeeAmountInGrams = entity.coffeeAmountInGrams
      ..waterTemperatureInCelsius = entity.waterTemperatureInCelsius
      ..stages = entity.stages
          .map((e) => TimerStageModel.fromEntity(e))
          .toList()
      ..tastingNotes = entity.tastingNotes;
  }

  CoffeeRecipe toEntity() {
    return CoffeeRecipe(
      id: domainId ?? '',
      name: name ?? '',
      brewMethod: brewMethod ?? '',
      coffeeAmountInGrams: coffeeAmountInGrams ?? 0.0,
      waterTemperatureInCelsius: waterTemperatureInCelsius ?? 0.0,
      stages: stages?.map((e) => e.toEntity()).toList() ?? [],
      tastingNotes: tastingNotes,
    );
  }
}
