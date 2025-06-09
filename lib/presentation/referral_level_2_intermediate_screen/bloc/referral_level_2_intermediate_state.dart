part of 'referral_level_2_intermediate_bloc.dart';

/// Represents the state of ReferralLevel2Intermediate in the application.

// ignore_for_file: must_be_immutable
class ReferralLevel2IntermediateState extends Equatable {
  ReferralLevel2IntermediateState({
    this.sliderIndex = 0,
    this.referralLevel2IntermediateModelObj,
  });

  ReferralLevel2IntermediateModel? referralLevel2IntermediateModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [sliderIndex, referralLevel2IntermediateModelObj];
  ReferralLevel2IntermediateState copyWith({
    int? sliderIndex,
    ReferralLevel2IntermediateModel? referralLevel2IntermediateModelObj,
  }) {
    return ReferralLevel2IntermediateState(
      sliderIndex: sliderIndex ?? this.sliderIndex,
      referralLevel2IntermediateModelObj:
          referralLevel2IntermediateModelObj ??
          this.referralLevel2IntermediateModelObj,
    );
  }
}
