part of 'bonus_details_added_trial_money_bloc.dart';

/// Represents the state of BonusDetailsAddedTrialMoney in the application.

// ignore_for_file: must_be_immutable
class BonusDetailsAddedTrialMoneyState extends Equatable {
  BonusDetailsAddedTrialMoneyState({this.bonusDetailsAddedTrialMoneyModelObj});

  BonusDetailsAddedTrialMoneyModel? bonusDetailsAddedTrialMoneyModelObj;

  @override
  List<Object?> get props => [bonusDetailsAddedTrialMoneyModelObj];
  BonusDetailsAddedTrialMoneyState copyWith({
    BonusDetailsAddedTrialMoneyModel? bonusDetailsAddedTrialMoneyModelObj,
  }) {
    return BonusDetailsAddedTrialMoneyState(
      bonusDetailsAddedTrialMoneyModelObj:
          bonusDetailsAddedTrialMoneyModelObj ??
          this.bonusDetailsAddedTrialMoneyModelObj,
    );
  }
}
