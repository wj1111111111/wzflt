part of 'wheel_result_help_bonus_random_bloc.dart';

/// Represents the state of WheelResultHelpBonusRandom in the application.

// ignore_for_file: must_be_immutable
class WheelResultHelpBonusRandomState extends Equatable {
  WheelResultHelpBonusRandomState({this.wheelResultHelpBonusRandomModelObj});

  WheelResultHelpBonusRandomModel? wheelResultHelpBonusRandomModelObj;

  @override
  List<Object?> get props => [wheelResultHelpBonusRandomModelObj];
  WheelResultHelpBonusRandomState copyWith({
    WheelResultHelpBonusRandomModel? wheelResultHelpBonusRandomModelObj,
  }) {
    return WheelResultHelpBonusRandomState(
      wheelResultHelpBonusRandomModelObj:
          wheelResultHelpBonusRandomModelObj ??
          this.wheelResultHelpBonusRandomModelObj,
    );
  }
}
