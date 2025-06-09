part of 'bind_crypto_settings_card_list_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BindCryptoSettingsCardList widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class BindCryptoSettingsCardListEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the BindCryptoSettingsCardList widget is first created.
class BindCryptoSettingsCardListInitialEvent
    extends BindCryptoSettingsCardListEvent {
  @override
  List<Object?> get props => [];
}
