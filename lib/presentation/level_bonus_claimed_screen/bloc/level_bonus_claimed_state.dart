part of 'level_bonus_claimed_bloc.dart';

/// Represents the state of LevelBonusClaimed in the application.

// ignore_for_file: must_be_immutable
class LevelBonusClaimedState extends Equatable {
  LevelBonusClaimedState({this.levelBonusClaimedModelObj});

  LevelBonusClaimedModel? levelBonusClaimedModelObj;

  @override
  List<Object?> get props => [levelBonusClaimedModelObj];
  LevelBonusClaimedState copyWith({
    LevelBonusClaimedModel? levelBonusClaimedModelObj,
  }) {
    return LevelBonusClaimedState(
      levelBonusClaimedModelObj:
          levelBonusClaimedModelObj ?? this.levelBonusClaimedModelObj,
    );
  }
}
