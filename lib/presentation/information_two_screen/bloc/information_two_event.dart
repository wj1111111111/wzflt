part of 'information_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InformationTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class InformationTwoEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the InformationTwo widget is first created.
class InformationTwoInitialEvent extends InformationTwoEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing ExpandableList selection

// ignore_for_file: must_be_immutable
class UpdateExpandableListEvent extends InformationTwoEvent {
  UpdateExpandableListEvent({required this.index, this.isSelected});

  int index;

  bool? isSelected;

  @override
  List<Object?> get props => [index, isSelected];
}
