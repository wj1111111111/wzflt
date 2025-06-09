part of 'ph_home_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PhHome widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class PhHomeEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the PhHome widget is first created.
class PhHomeInitialEvent extends PhHomeEvent {
  @override
  List<Object?> get props => [];
}

// ignore_for_file: must_be_immutable
class ListcheckmarkItemEvent extends PhHomeEvent {
  ListcheckmarkItemEvent({required this.index, this.radioGroup});

  int index;

  String? radioGroup;

  @override
  List<Object?> get props => [index, radioGroup];
}
