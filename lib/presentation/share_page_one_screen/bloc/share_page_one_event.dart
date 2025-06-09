part of 'share_page_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SharePageOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class SharePageOneEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the SharePageOne widget is first created.
class SharePageOneInitialEvent extends SharePageOneEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing slider index

// ignore_for_file: must_be_immutable
class ChangeSliderIndexEvent extends SharePageOneEvent {
  ChangeSliderIndexEvent({required this.value});

  int value;

  @override
  List<Object?> get props => [value];
}
