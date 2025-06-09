part of 'wheel_spin_main_no_withdrawal_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///WheelSpinMainNoWithdrawal widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class WheelSpinMainNoWithdrawalEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the WheelSpinMainNoWithdrawal widget is first created.
class WheelSpinMainNoWithdrawalInitialEvent
    extends WheelSpinMainNoWithdrawalEvent {
  @override
  List<Object?> get props => [];
}
