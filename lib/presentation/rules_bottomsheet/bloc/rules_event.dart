part of 'rules_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Rules widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class RulesEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Rules widget is first created.
class RulesInitialEvent extends RulesEvent {
  @override
  List<Object?> get props => [];
}
