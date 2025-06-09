part of 'add_top_up_account_bank_account_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AddTopUpAccountBankAccount widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class AddTopUpAccountBankAccountEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the AddTopUpAccountBankAccount widget is first created.
class AddTopUpAccountBankAccountInitialEvent
    extends AddTopUpAccountBankAccountEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing password visibility

// ignore_for_file: must_be_immutable
class ChangePasswordVisibilityEvent extends AddTopUpAccountBankAccountEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [value];
}
