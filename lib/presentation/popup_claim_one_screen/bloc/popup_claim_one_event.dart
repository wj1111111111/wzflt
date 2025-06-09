part of 'popup_claim_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PopupClaimOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class PopupClaimOneEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the PopupClaimOne widget is first created.
class PopupClaimOneInitialEvent extends PopupClaimOneEvent {
  @override
  List<Object?> get props => [];
}
