part of 'referral_share_rules_bloc.dart';

/// Represents the state of ReferralShareRules in the application.

// ignore_for_file: must_be_immutable
class ReferralShareRulesState extends Equatable {
  ReferralShareRulesState({
    this.framefiveController,
    this.norequirementsController,
    this.norequirements1Controller,
    this.frameoneController,
    this.frametwoController,
    this.referralShareRulesModelObj,
  });

  TextEditingController? framefiveController;

  TextEditingController? norequirementsController;

  TextEditingController? norequirements1Controller;

  TextEditingController? frameoneController;

  TextEditingController? frametwoController;

  ReferralShareRulesModel? referralShareRulesModelObj;

  @override
  List<Object?> get props => [
    framefiveController,
    norequirementsController,
    norequirements1Controller,
    frameoneController,
    frametwoController,
    referralShareRulesModelObj,
  ];
  ReferralShareRulesState copyWith({
    TextEditingController? framefiveController,
    TextEditingController? norequirementsController,
    TextEditingController? norequirements1Controller,
    TextEditingController? frameoneController,
    TextEditingController? frametwoController,
    ReferralShareRulesModel? referralShareRulesModelObj,
  }) {
    return ReferralShareRulesState(
      framefiveController: framefiveController ?? this.framefiveController,
      norequirementsController:
          norequirementsController ?? this.norequirementsController,
      norequirements1Controller:
          norequirements1Controller ?? this.norequirements1Controller,
      frameoneController: frameoneController ?? this.frameoneController,
      frametwoController: frametwoController ?? this.frametwoController,
      referralShareRulesModelObj:
          referralShareRulesModelObj ?? this.referralShareRulesModelObj,
    );
  }
}
