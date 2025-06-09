part of 'wheel_spin_main_hidden_levels_bloc.dart';

/// Represents the state of WheelSpinMainHiddenLevels in the application.

// ignore_for_file: must_be_immutable
class WheelSpinMainHiddenLevelsState extends Equatable {
  WheelSpinMainHiddenLevelsState({
    this.wheelspinmainTabModelObj,
    this.wheelSpinMainHiddenLevelsModelObj,
  });

  WheelSpinMainHiddenLevelsModel? wheelSpinMainHiddenLevelsModelObj;

  WheelspinmainTabModel? wheelspinmainTabModelObj;

  @override
  List<Object?> get props => [
    wheelspinmainTabModelObj,
    wheelSpinMainHiddenLevelsModelObj,
  ];
  WheelSpinMainHiddenLevelsState copyWith({
    WheelspinmainTabModel? wheelspinmainTabModelObj,
    WheelSpinMainHiddenLevelsModel? wheelSpinMainHiddenLevelsModelObj,
  }) {
    return WheelSpinMainHiddenLevelsState(
      wheelspinmainTabModelObj:
          wheelspinmainTabModelObj ?? this.wheelspinmainTabModelObj,
      wheelSpinMainHiddenLevelsModelObj:
          wheelSpinMainHiddenLevelsModelObj ??
          this.wheelSpinMainHiddenLevelsModelObj,
    );
  }
}
