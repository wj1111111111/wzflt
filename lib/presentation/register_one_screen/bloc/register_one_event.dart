part of 'register_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///RegisterOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class RegisterOneEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the RegisterOne widget is first created.
class RegisterOneInitialEvent extends RegisterOneEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing country code

// ignore_for_file: must_be_immutable
class ChangeCountryEvent extends RegisterOneEvent {
  ChangeCountryEvent({required this.value});

  Country value;

  @override
  List<Object?> get props => [value];
}

///Event for changing password visibility

// ignore_for_file: must_be_immutable
class ChangePasswordVisibilityEvent extends RegisterOneEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [value];
}

///Event for changing checkbox

// ignore_for_file: must_be_immutable
class ChangeCheckBoxEvent extends RegisterOneEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [value];
}

///Event for changing checkbox

// ignore_for_file: must_be_immutable
class ChangeCheckBox1Event extends RegisterOneEvent {
  ChangeCheckBox1Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [value];
}
