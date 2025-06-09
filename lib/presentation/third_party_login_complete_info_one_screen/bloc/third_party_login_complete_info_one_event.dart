part of 'third_party_login_complete_info_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ThirdPartyLoginCompleteInfoOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class ThirdPartyLoginCompleteInfoOneEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the ThirdPartyLoginCompleteInfoOne widget is first created.
class ThirdPartyLoginCompleteInfoOneInitialEvent
    extends ThirdPartyLoginCompleteInfoOneEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing country code

// ignore_for_file: must_be_immutable
class ChangeCountryEvent extends ThirdPartyLoginCompleteInfoOneEvent {
  ChangeCountryEvent({required this.value});

  Country value;

  @override
  List<Object?> get props => [value];
}

///Event for changing password visibility

// ignore_for_file: must_be_immutable
class ChangePasswordVisibilityEvent
    extends ThirdPartyLoginCompleteInfoOneEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [value];
}
