part of 'weekly_wage_claimed_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///WeeklyWageClaimed widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class WeeklyWageClaimedEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the WeeklyWageClaimed widget is first created.
class WeeklyWageClaimedInitialEvent extends WeeklyWageClaimedEvent {
  @override
  List<Object?> get props => [];
}
