part of 'senior_mentoring_highest_level_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SeniorMentoringHighestLevel widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class SeniorMentoringHighestLevelEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the SeniorMentoringHighestLevel widget is first created.
class SeniorMentoringHighestLevelInitialEvent
    extends SeniorMentoringHighestLevelEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing slider index

// ignore_for_file: must_be_immutable
class ChangeSliderIndexEvent extends SeniorMentoringHighestLevelEvent {
  ChangeSliderIndexEvent({required this.value});

  int value;

  @override
  List<Object?> get props => [value];
}
