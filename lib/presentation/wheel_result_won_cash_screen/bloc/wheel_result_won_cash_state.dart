part of 'wheel_result_won_cash_bloc.dart';

/// Represents the state of WheelResultWonCash in the application.

// ignore_for_file: must_be_immutable
class WheelResultWonCashState extends Equatable {
  WheelResultWonCashState({this.wheelResultWonCashModelObj});

  WheelResultWonCashModel? wheelResultWonCashModelObj;

  @override
  List<Object?> get props => [wheelResultWonCashModelObj];
  WheelResultWonCashState copyWith({
    WheelResultWonCashModel? wheelResultWonCashModelObj,
  }) {
    return WheelResultWonCashState(
      wheelResultWonCashModelObj:
          wheelResultWonCashModelObj ?? this.wheelResultWonCashModelObj,
    );
  }
}
