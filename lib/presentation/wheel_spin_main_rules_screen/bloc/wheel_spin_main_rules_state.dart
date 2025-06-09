part of 'wheel_spin_main_rules_bloc.dart';

/// Represents the state of WheelSpinMainRules in the application.

// ignore_for_file: must_be_immutable
class WheelSpinMainRulesState extends Equatable {
  WheelSpinMainRulesState({this.wheelSpinMainRulesModelObj});

  WheelSpinMainRulesModel? wheelSpinMainRulesModelObj;

  @override
  List<Object?> get props => [wheelSpinMainRulesModelObj];
  WheelSpinMainRulesState copyWith({
    WheelSpinMainRulesModel? wheelSpinMainRulesModelObj,
  }) {
    return WheelSpinMainRulesState(
      wheelSpinMainRulesModelObj:
          wheelSpinMainRulesModelObj ?? this.wheelSpinMainRulesModelObj,
    );
  }
}
