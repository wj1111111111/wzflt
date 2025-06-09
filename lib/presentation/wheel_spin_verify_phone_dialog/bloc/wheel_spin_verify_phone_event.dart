part of 'wheel_spin_verify_phone_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///WheelSpinVerifyPhone widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class WheelSpinVerifyPhoneEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the WheelSpinVerifyPhone widget is first created.
class WheelSpinVerifyPhoneInitialEvent extends WheelSpinVerifyPhoneEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing country code

// ignore_for_file: must_be_immutable
class ChangeCountryEvent extends WheelSpinVerifyPhoneEvent {
  ChangeCountryEvent({required this.value});

  Country value;

  @override
  List<Object?> get props => [value];
}
