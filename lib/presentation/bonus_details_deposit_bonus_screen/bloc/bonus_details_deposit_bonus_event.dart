part of 'bonus_details_deposit_bonus_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BonusDetailsDepositBonus widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class BonusDetailsDepositBonusEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the BonusDetailsDepositBonus widget is first created.
class BonusDetailsDepositBonusInitialEvent
    extends BonusDetailsDepositBonusEvent {
  @override
  List<Object?> get props => [];
}
