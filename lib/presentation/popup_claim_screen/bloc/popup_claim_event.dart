part of 'popup_claim_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PopupClaim widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class PopupClaimEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the PopupClaim widget is first created.
class PopupClaimInitialEvent extends PopupClaimEvent {
  @override
  List<Object?> get props => [];
}
