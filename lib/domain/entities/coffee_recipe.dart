import 'package:equatable/equatable.dart';
import 'package:specialty_coffee_tracker/domain/entities/timer_stage.dart';

class CoffeeRecipe extends Equatable {
  final String id;
  final String name;
  final String brewMethod;
  final double coffeeAmountInGrams;
  final double waterTemperatureInCelsius;
  final List<TimerStage> stages;
  final String? tastingNotes;

  const CoffeeRecipe({
    required this.id,
    required this.name,
    required this.brewMethod,
    required this.coffeeAmountInGrams,
    required this.waterTemperatureInCelsius,
    required this.stages,
    this.tastingNotes,
  });

  @override
  List<Object?> get props => [
    id,
    name,
    brewMethod,
    coffeeAmountInGrams,
    waterTemperatureInCelsius,
    stages,
    tastingNotes,
  ];
}
