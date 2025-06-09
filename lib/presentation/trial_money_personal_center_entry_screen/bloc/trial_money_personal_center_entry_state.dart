part of 'trial_money_personal_center_entry_bloc.dart';

/// Represents the state of TrialMoneyPersonalCenterEntry in the application.

// ignore_for_file: must_be_immutable
class TrialMoneyPersonalCenterEntryState extends Equatable {
  TrialMoneyPersonalCenterEntryState({
    this.enterthegiftController,
    this.trialMoneyPersonalCenterEntryModelObj,
  });

  TextEditingController? enterthegiftController;

  TrialMoneyPersonalCenterEntryModel? trialMoneyPersonalCenterEntryModelObj;

  @override
  List<Object?> get props => [
    enterthegiftController,
    trialMoneyPersonalCenterEntryModelObj,
  ];
  TrialMoneyPersonalCenterEntryState copyWith({
    TextEditingController? enterthegiftController,
    TrialMoneyPersonalCenterEntryModel? trialMoneyPersonalCenterEntryModelObj,
  }) {
    return TrialMoneyPersonalCenterEntryState(
      enterthegiftController:
          enterthegiftController ?? this.enterthegiftController,
      trialMoneyPersonalCenterEntryModelObj:
          trialMoneyPersonalCenterEntryModelObj ??
          this.trialMoneyPersonalCenterEntryModelObj,
    );
  }
}
