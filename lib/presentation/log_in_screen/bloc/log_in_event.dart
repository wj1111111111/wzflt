part of 'log_in_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LogIn widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class LogInEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the LogIn widget is first created.
class LogInInitialEvent extends LogInEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing country code

// ignore_for_file: must_be_immutable
class ChangeCountryEvent extends LogInEvent {
  ChangeCountryEvent({required this.value});

  Country value;

  @override
  List<Object?> get props => [value];
}

///Event for changing password visibility

// ignore_for_file: must_be_immutable
class ChangePasswordVisibilityEvent extends LogInEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [value];
}

///Event for changing checkbox

// ignore_for_file: must_be_immutable
class ChangeCheckBoxEvent extends LogInEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [value];
}
