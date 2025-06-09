part of 'wheel_result_won_cash_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///WheelResultWonCash widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class WheelResultWonCashEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the WheelResultWonCash widget is first created.
class WheelResultWonCashInitialEvent extends WheelResultWonCashEvent {
  @override
  List<Object?> get props => [];
}
