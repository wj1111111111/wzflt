part of 'registration_success_guide_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///RegistrationSuccessGuide widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class RegistrationSuccessGuideEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the RegistrationSuccessGuide widget is first created.
class RegistrationSuccessGuideInitialEvent
    extends RegistrationSuccessGuideEvent {
  @override
  List<Object?> get props => [];
}
