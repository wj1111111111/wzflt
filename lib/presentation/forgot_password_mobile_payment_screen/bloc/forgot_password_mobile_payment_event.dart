part of 'forgot_password_mobile_payment_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ForgotPasswordMobilePayment widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class ForgotPasswordMobilePaymentEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the ForgotPasswordMobilePayment widget is first created.
class ForgotPasswordMobilePaymentInitialEvent
    extends ForgotPasswordMobilePaymentEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing country code

// ignore_for_file: must_be_immutable
class ChangeCountryEvent extends ForgotPasswordMobilePaymentEvent {
  ChangeCountryEvent({required this.value});

  Country value;

  @override
  List<Object?> get props => [value];
}

///Event for changing password visibility

// ignore_for_file: must_be_immutable
class ChangePasswordVisibilityEvent extends ForgotPasswordMobilePaymentEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [value];
}

///Event for changing password visibility

// ignore_for_file: must_be_immutable
class ChangePasswordVisibilityEvent1 extends ForgotPasswordMobilePaymentEvent {
  ChangePasswordVisibilityEvent1({required this.value});

  bool value;

  @override
  List<Object?> get props => [value];
}
