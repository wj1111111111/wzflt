part of 'wallet_choose_card_type_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///WalletChooseCardType widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class WalletChooseCardTypeEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the WalletChooseCardType widget is first created.
class WalletChooseCardTypeInitialEvent extends WalletChooseCardTypeEvent {
  @override
  List<Object?> get props => [];
}
