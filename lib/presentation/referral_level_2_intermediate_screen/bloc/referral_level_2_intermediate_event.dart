part of 'referral_level_2_intermediate_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ReferralLevel2Intermediate widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class ReferralLevel2IntermediateEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the ReferralLevel2Intermediate widget is first created.
class ReferralLevel2IntermediateInitialEvent
    extends ReferralLevel2IntermediateEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing slider index

// ignore_for_file: must_be_immutable
class ChangeSliderIndexEvent extends ReferralLevel2IntermediateEvent {
  ChangeSliderIndexEvent({required this.value});

  int value;

  @override
  List<Object?> get props => [value];
}
