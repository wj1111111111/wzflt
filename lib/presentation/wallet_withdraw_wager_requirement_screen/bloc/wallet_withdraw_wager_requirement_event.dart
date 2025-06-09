part of 'wallet_withdraw_wager_requirement_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///WalletWithdrawWagerRequirement widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class WalletWithdrawWagerRequirementEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the WalletWithdrawWagerRequirement widget is first created.
class WalletWithdrawWagerRequirementInitialEvent
    extends WalletWithdrawWagerRequirementEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing slider index

// ignore_for_file: must_be_immutable
class ChangeSliderIndexEvent extends WalletWithdrawWagerRequirementEvent {
  ChangeSliderIndexEvent({required this.value});

  int value;

  @override
  List<Object?> get props => [value];
}
