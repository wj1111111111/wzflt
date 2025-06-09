part of 'personal_center_claimed_bonus_bloc.dart';

/// Represents the state of PersonalCenterClaimedBonus in the application.

// ignore_for_file: must_be_immutable
class PersonalCenterClaimedBonusState extends Equatable {
  PersonalCenterClaimedBonusState({this.personalCenterClaimedBonusModelObj});

  PersonalCenterClaimedBonusModel? personalCenterClaimedBonusModelObj;

  @override
  List<Object?> get props => [personalCenterClaimedBonusModelObj];
  PersonalCenterClaimedBonusState copyWith({
    PersonalCenterClaimedBonusModel? personalCenterClaimedBonusModelObj,
  }) {
    return PersonalCenterClaimedBonusState(
      personalCenterClaimedBonusModelObj:
          personalCenterClaimedBonusModelObj ??
          this.personalCenterClaimedBonusModelObj,
    );
  }
}
