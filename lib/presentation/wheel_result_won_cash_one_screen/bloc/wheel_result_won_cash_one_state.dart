part of 'wheel_result_won_cash_one_bloc.dart';

/// Represents the state of WheelResultWonCashOne in the application.

// ignore_for_file: must_be_immutable
class WheelResultWonCashOneState extends Equatable {
  WheelResultWonCashOneState({this.wheelResultWonCashOneModelObj});

  WheelResultWonCashOneModel? wheelResultWonCashOneModelObj;

  @override
  List<Object?> get props => [wheelResultWonCashOneModelObj];
  WheelResultWonCashOneState copyWith({
    WheelResultWonCashOneModel? wheelResultWonCashOneModelObj,
  }) {
    return WheelResultWonCashOneState(
      wheelResultWonCashOneModelObj:
          wheelResultWonCashOneModelObj ?? this.wheelResultWonCashOneModelObj,
    );
  }
}
