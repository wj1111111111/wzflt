part of 'usdt_bind_never_set_transaction_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///UsdtBindNeverSetTransaction widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class UsdtBindNeverSetTransactionEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the UsdtBindNeverSetTransaction widget is first created.
class UsdtBindNeverSetTransactionInitialEvent
    extends UsdtBindNeverSetTransactionEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing password visibility

// ignore_for_file: must_be_immutable
class ChangePasswordVisibilityEvent extends UsdtBindNeverSetTransactionEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [value];
}
