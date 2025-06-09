part of 'bonus_details_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BonusDetailsOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class BonusDetailsOneEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the BonusDetailsOne widget is first created.
class BonusDetailsOneInitialEvent extends BonusDetailsOneEvent {
  @override
  List<Object?> get props => [];
}
