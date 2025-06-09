part of 'forgot_password_mobile_payment_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ForgotPasswordMobilePaymentOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class ForgotPasswordMobilePaymentOneEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the ForgotPasswordMobilePaymentOne widget is first created.
class ForgotPasswordMobilePaymentOneInitialEvent
    extends ForgotPasswordMobilePaymentOneEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing country code

// ignore_for_file: must_be_immutable
class ChangeCountryEvent extends ForgotPasswordMobilePaymentOneEvent {
  ChangeCountryEvent({required this.value});

  Country value;

  @override
  List<Object?> get props => [value];
}

///Event for changing password visibility

// ignore_for_file: must_be_immutable
class ChangePasswordVisibilityEvent
    extends ForgotPasswordMobilePaymentOneEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [value];
}

///Event for changing password visibility

// ignore_for_file: must_be_immutable
class ChangePasswordVisibilityEvent1
    extends ForgotPasswordMobilePaymentOneEvent {
  ChangePasswordVisibilityEvent1({required this.value});

  bool value;

  @override
  List<Object?> get props => [value];
}
