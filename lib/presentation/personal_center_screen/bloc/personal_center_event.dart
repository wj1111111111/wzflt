part of 'personal_center_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PersonalCenter widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class PersonalCenterEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the PersonalCenter widget is first created.
class PersonalCenterInitialEvent extends PersonalCenterEvent {
  @override
  List<Object?> get props => [];
}
