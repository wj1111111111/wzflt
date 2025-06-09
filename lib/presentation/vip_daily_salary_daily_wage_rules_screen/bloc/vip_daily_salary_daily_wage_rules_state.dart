part of 'vip_daily_salary_daily_wage_rules_bloc.dart';

/// Represents the state of VipDailySalaryDailyWageRules in the application.

// ignore_for_file: must_be_immutable
class VipDailySalaryDailyWageRulesState extends Equatable {
  VipDailySalaryDailyWageRulesState({
    this.vipDailySalaryDailyWageRulesModelObj,
  });

  VipDailySalaryDailyWageRulesModel? vipDailySalaryDailyWageRulesModelObj;

  @override
  List<Object?> get props => [vipDailySalaryDailyWageRulesModelObj];
  VipDailySalaryDailyWageRulesState copyWith({
    VipDailySalaryDailyWageRulesModel? vipDailySalaryDailyWageRulesModelObj,
  }) {
    return VipDailySalaryDailyWageRulesState(
      vipDailySalaryDailyWageRulesModelObj:
          vipDailySalaryDailyWageRulesModelObj ??
          this.vipDailySalaryDailyWageRulesModelObj,
    );
  }
}
