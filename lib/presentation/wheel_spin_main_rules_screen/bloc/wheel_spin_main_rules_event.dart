part of 'wheel_spin_main_rules_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///WheelSpinMainRules widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class WheelSpinMainRulesEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the WheelSpinMainRules widget is first created.
class WheelSpinMainRulesInitialEvent extends WheelSpinMainRulesEvent {
  @override
  List<Object?> get props => [];
}
