part of 'vip_daily_salary_daily_wage_rules_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///VipDailySalaryDailyWageRules widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class VipDailySalaryDailyWageRulesEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the VipDailySalaryDailyWageRules widget is first created.
class VipDailySalaryDailyWageRulesInitialEvent
    extends VipDailySalaryDailyWageRulesEvent {
  @override
  List<Object?> get props => [];
}
