import 'package:equatable/equatable.dart';

class TimerStage extends Equatable {
  final String name;
  final int durationInSeconds;
  final int waterAmountInMl;

  const TimerStage({
    required this.name,
    required this.durationInSeconds,
    required this.waterAmountInMl,
  });

  @override
  List<Object?> get props => [name, durationInSeconds, waterAmountInMl];
}
