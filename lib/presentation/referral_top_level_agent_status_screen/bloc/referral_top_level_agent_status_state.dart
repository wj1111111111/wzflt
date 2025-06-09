part of 'referral_top_level_agent_status_bloc.dart';

/// Represents the state of ReferralTopLevelAgentStatus in the application.

// ignore_for_file: must_be_immutable
class ReferralTopLevelAgentStatusState extends Equatable {
  ReferralTopLevelAgentStatusState({
    this.sliderIndex = 0,
    this.referralTopLevelAgentStatusModelObj,
  });

  ReferralTopLevelAgentStatusModel? referralTopLevelAgentStatusModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [sliderIndex, referralTopLevelAgentStatusModelObj];
  ReferralTopLevelAgentStatusState copyWith({
    int? sliderIndex,
    ReferralTopLevelAgentStatusModel? referralTopLevelAgentStatusModelObj,
  }) {
    return ReferralTopLevelAgentStatusState(
      sliderIndex: sliderIndex ?? this.sliderIndex,
      referralTopLevelAgentStatusModelObj:
          referralTopLevelAgentStatusModelObj ??
          this.referralTopLevelAgentStatusModelObj,
    );
  }
}
