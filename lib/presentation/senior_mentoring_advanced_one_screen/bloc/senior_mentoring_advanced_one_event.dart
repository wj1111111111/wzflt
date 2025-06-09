part of 'senior_mentoring_advanced_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SeniorMentoringAdvancedOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class SeniorMentoringAdvancedOneEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the SeniorMentoringAdvancedOne widget is first created.
class SeniorMentoringAdvancedOneInitialEvent
    extends SeniorMentoringAdvancedOneEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing slider index

// ignore_for_file: must_be_immutable
class ChangeSliderIndexEvent extends SeniorMentoringAdvancedOneEvent {
  ChangeSliderIndexEvent({required this.value});

  int value;

  @override
  List<Object?> get props => [value];
}
