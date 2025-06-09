part of 'settings_personal_info_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SettingsPersonalInfo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class SettingsPersonalInfoEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the SettingsPersonalInfo widget is first created.
class SettingsPersonalInfoInitialEvent extends SettingsPersonalInfoEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing country code

// ignore_for_file: must_be_immutable
class ChangeCountryEvent extends SettingsPersonalInfoEvent {
  ChangeCountryEvent({required this.value});

  Country value;

  @override
  List<Object?> get props => [value];
}

///Event for changing password visibility

// ignore_for_file: must_be_immutable
class ChangePasswordVisibilityEvent extends SettingsPersonalInfoEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [value];
}
