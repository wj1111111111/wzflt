part of 'smash_the_golden_egg_bloc.dart';

/// Represents the state of SmashTheGoldenEgg in the application.

// ignore_for_file: must_be_immutable
class SmashTheGoldenEggState extends Equatable {
  SmashTheGoldenEggState({this.smashTheGoldenEggModelObj});

  SmashTheGoldenEggModel? smashTheGoldenEggModelObj;

  @override
  List<Object?> get props => [smashTheGoldenEggModelObj];
  SmashTheGoldenEggState copyWith({
    SmashTheGoldenEggModel? smashTheGoldenEggModelObj,
  }) {
    return SmashTheGoldenEggState(
      smashTheGoldenEggModelObj:
          smashTheGoldenEggModelObj ?? this.smashTheGoldenEggModelObj,
    );
  }
}
