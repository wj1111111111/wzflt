part of 'vip_daily_wage_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///VipDailyWage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class VipDailyWageEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the VipDailyWage widget is first created.
class VipDailyWageInitialEvent extends VipDailyWageEvent {
  @override
  List<Object?> get props => [];
}
