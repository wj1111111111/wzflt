part of 'bind_never_set_transaction_password_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BindNeverSetTransactionPassword widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class BindNeverSetTransactionPasswordEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the BindNeverSetTransactionPassword widget is first created.
class BindNeverSetTransactionPasswordInitialEvent
    extends BindNeverSetTransactionPasswordEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing password visibility

// ignore_for_file: must_be_immutable
class ChangePasswordVisibilityEvent
    extends BindNeverSetTransactionPasswordEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [value];
}
