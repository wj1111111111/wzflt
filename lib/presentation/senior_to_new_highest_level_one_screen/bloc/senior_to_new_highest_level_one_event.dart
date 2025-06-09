part of 'senior_to_new_highest_level_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SeniorToNewHighestLevelOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class SeniorToNewHighestLevelOneEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the SeniorToNewHighestLevelOne widget is first created.
class SeniorToNewHighestLevelOneInitialEvent
    extends SeniorToNewHighestLevelOneEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing slider index

// ignore_for_file: must_be_immutable
class ChangeSliderIndexEvent extends SeniorToNewHighestLevelOneEvent {
  ChangeSliderIndexEvent({required this.value});

  int value;

  @override
  List<Object?> get props => [value];
}
