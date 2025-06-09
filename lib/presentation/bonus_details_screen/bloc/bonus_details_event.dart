part of 'bonus_details_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BonusDetails widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class BonusDetailsEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the BonusDetails widget is first created.
class BonusDetailsInitialEvent extends BonusDetailsEvent {
  @override
  List<Object?> get props => [];
}
