part of 'bonus_details_default_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BonusDetailsDefault widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class BonusDetailsDefaultEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the BonusDetailsDefault widget is first created.
class BonusDetailsDefaultInitialEvent extends BonusDetailsDefaultEvent {
  @override
  List<Object?> get props => [];
}
