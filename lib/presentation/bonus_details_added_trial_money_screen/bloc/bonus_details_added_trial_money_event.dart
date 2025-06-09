part of 'bonus_details_added_trial_money_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BonusDetailsAddedTrialMoney widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class BonusDetailsAddedTrialMoneyEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the BonusDetailsAddedTrialMoney widget is first created.
class BonusDetailsAddedTrialMoneyInitialEvent
    extends BonusDetailsAddedTrialMoneyEvent {
  @override
  List<Object?> get props => [];
}
