part of 'vip_daily_wage_bloc.dart';

/// Represents the state of VipDailyWage in the application.

// ignore_for_file: must_be_immutable
class VipDailyWageState extends Equatable {
  VipDailyWageState({this.vipDailyWageModelObj});

  VipDailyWageModel? vipDailyWageModelObj;

  @override
  List<Object?> get props => [vipDailyWageModelObj];
  VipDailyWageState copyWith({VipDailyWageModel? vipDailyWageModelObj}) {
    return VipDailyWageState(
      vipDailyWageModelObj: vipDailyWageModelObj ?? this.vipDailyWageModelObj,
    );
  }
}
