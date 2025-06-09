part of 'level_bonus_bloc.dart';

/// Represents the state of LevelBonus in the application.

// ignore_for_file: must_be_immutable
class LevelBonusState extends Equatable {
  LevelBonusState({this.levelBonusModelObj});

  LevelBonusModel? levelBonusModelObj;

  @override
  List<Object?> get props => [levelBonusModelObj];
  LevelBonusState copyWith({LevelBonusModel? levelBonusModelObj}) {
    return LevelBonusState(
      levelBonusModelObj: levelBonusModelObj ?? this.levelBonusModelObj,
    );
  }
}
