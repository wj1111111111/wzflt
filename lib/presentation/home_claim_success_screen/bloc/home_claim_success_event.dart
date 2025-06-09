part of 'home_claim_success_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomeClaimSuccess widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class HomeClaimSuccessEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the HomeClaimSuccess widget is first created.
class HomeClaimSuccessInitialEvent extends HomeClaimSuccessEvent {
  @override
  List<Object?> get props => [];
}
