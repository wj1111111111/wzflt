part of 'third_party_login_complete_info_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ThirdPartyLoginCompleteInfo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class ThirdPartyLoginCompleteInfoEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the ThirdPartyLoginCompleteInfo widget is first created.
class ThirdPartyLoginCompleteInfoInitialEvent
    extends ThirdPartyLoginCompleteInfoEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing country code

// ignore_for_file: must_be_immutable
class ChangeCountryEvent extends ThirdPartyLoginCompleteInfoEvent {
  ChangeCountryEvent({required this.value});

  Country value;

  @override
  List<Object?> get props => [value];
}
