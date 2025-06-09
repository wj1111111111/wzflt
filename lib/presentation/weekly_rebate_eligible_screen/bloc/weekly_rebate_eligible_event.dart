part of 'weekly_rebate_eligible_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///WeeklyRebateEligible widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class WeeklyRebateEligibleEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the WeeklyRebateEligible widget is first created.
class WeeklyRebateEligibleInitialEvent extends WeeklyRebateEligibleEvent {
  @override
  List<Object?> get props => [];
}
