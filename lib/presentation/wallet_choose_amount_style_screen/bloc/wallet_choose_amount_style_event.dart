part of 'wallet_choose_amount_style_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///WalletChooseAmountStyle widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class WalletChooseAmountStyleEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the WalletChooseAmountStyle widget is first created.
class WalletChooseAmountStyleInitialEvent extends WalletChooseAmountStyleEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing radio button

// ignore_for_file: must_be_immutable
class ChangeRadioButtonEvent extends WalletChooseAmountStyleEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [value];
}
