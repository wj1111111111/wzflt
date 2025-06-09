part of 'settings_change_password_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SettingsChangePassword widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class SettingsChangePasswordEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the SettingsChangePassword widget is first created.
class SettingsChangePasswordInitialEvent extends SettingsChangePasswordEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing password visibility

// ignore_for_file: must_be_immutable
class ChangePasswordVisibilityEvent extends SettingsChangePasswordEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [value];
}

///Event for changing password visibility

// ignore_for_file: must_be_immutable
class ChangePasswordVisibilityEvent1 extends SettingsChangePasswordEvent {
  ChangePasswordVisibilityEvent1({required this.value});

  bool value;

  @override
  List<Object?> get props => [value];
}

///Event for changing password visibility

// ignore_for_file: must_be_immutable
class ChangePasswordVisibilityEvent2 extends SettingsChangePasswordEvent {
  ChangePasswordVisibilityEvent2({required this.value});

  bool value;

  @override
  List<Object?> get props => [value];
}

///Event for changing password visibility

// ignore_for_file: must_be_immutable
class ChangePasswordVisibilityEvent3 extends SettingsChangePasswordEvent {
  ChangePasswordVisibilityEvent3({required this.value});

  bool value;

  @override
  List<Object?> get props => [value];
}

///Event for changing password visibility

// ignore_for_file: must_be_immutable
class ChangePasswordVisibilityEvent4 extends SettingsChangePasswordEvent {
  ChangePasswordVisibilityEvent4({required this.value});

  bool value;

  @override
  List<Object?> get props => [value];
}
