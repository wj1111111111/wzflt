part of 'wheel_result_extra_spins_bloc.dart';

/// Represents the state of WheelResultExtraSpins in the application.

// ignore_for_file: must_be_immutable
class WheelResultExtraSpinsState extends Equatable {
  WheelResultExtraSpinsState({this.wheelResultExtraSpinsModelObj});

  WheelResultExtraSpinsModel? wheelResultExtraSpinsModelObj;

  @override
  List<Object?> get props => [wheelResultExtraSpinsModelObj];
  WheelResultExtraSpinsState copyWith({
    WheelResultExtraSpinsModel? wheelResultExtraSpinsModelObj,
  }) {
    return WheelResultExtraSpinsState(
      wheelResultExtraSpinsModelObj:
          wheelResultExtraSpinsModelObj ?? this.wheelResultExtraSpinsModelObj,
    );
  }
}
