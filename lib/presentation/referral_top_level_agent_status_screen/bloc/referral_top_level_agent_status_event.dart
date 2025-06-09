part of 'referral_top_level_agent_status_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ReferralTopLevelAgentStatus widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class ReferralTopLevelAgentStatusEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the ReferralTopLevelAgentStatus widget is first created.
class ReferralTopLevelAgentStatusInitialEvent
    extends ReferralTopLevelAgentStatusEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing slider index

// ignore_for_file: must_be_immutable
class ChangeSliderIndexEvent extends ReferralTopLevelAgentStatusEvent {
  ChangeSliderIndexEvent({required this.value});

  int value;

  @override
  List<Object?> get props => [value];
}
