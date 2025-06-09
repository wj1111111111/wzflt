part of 'settings_add_account_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SettingsAddAccount widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class SettingsAddAccountEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the SettingsAddAccount widget is first created.
class SettingsAddAccountInitialEvent extends SettingsAddAccountEvent {
  @override
  List<Object?> get props => [];
}
