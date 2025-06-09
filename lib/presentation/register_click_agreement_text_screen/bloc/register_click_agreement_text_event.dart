part of 'register_click_agreement_text_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///RegisterClickAgreementText widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class RegisterClickAgreementTextEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the RegisterClickAgreementText widget is first created.
class RegisterClickAgreementTextInitialEvent
    extends RegisterClickAgreementTextEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing country code

// ignore_for_file: must_be_immutable
class ChangeCountryEvent extends RegisterClickAgreementTextEvent {
  ChangeCountryEvent({required this.value});

  Country value;

  @override
  List<Object?> get props => [value];
}

///Event for changing password visibility

// ignore_for_file: must_be_immutable
class ChangePasswordVisibilityEvent extends RegisterClickAgreementTextEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [value];
}

///Event for changing checkbox

// ignore_for_file: must_be_immutable
class ChangeCheckBoxEvent extends RegisterClickAgreementTextEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [value];
}

///Event for changing checkbox

// ignore_for_file: must_be_immutable
class ChangeCheckBox1Event extends RegisterClickAgreementTextEvent {
  ChangeCheckBox1Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [value];
}
