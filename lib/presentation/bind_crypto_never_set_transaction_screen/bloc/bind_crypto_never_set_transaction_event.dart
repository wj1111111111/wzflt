part of 'bind_crypto_never_set_transaction_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BindCryptoNeverSetTransaction widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class BindCryptoNeverSetTransactionEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the BindCryptoNeverSetTransaction widget is first created.
class BindCryptoNeverSetTransactionInitialEvent
    extends BindCryptoNeverSetTransactionEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing password visibility

// ignore_for_file: must_be_immutable
class ChangePasswordVisibilityEvent extends BindCryptoNeverSetTransactionEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [value];
}

///Event for changing password visibility

// ignore_for_file: must_be_immutable
class ChangePasswordVisibilityEvent1
    extends BindCryptoNeverSetTransactionEvent {
  ChangePasswordVisibilityEvent1({required this.value});

  bool value;

  @override
  List<Object?> get props => [value];
}
