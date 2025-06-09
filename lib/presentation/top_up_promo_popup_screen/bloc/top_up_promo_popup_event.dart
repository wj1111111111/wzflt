part of 'top_up_promo_popup_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TopUpPromoPopup widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class TopUpPromoPopupEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the TopUpPromoPopup widget is first created.
class TopUpPromoPopupInitialEvent extends TopUpPromoPopupEvent {
  @override
  List<Object?> get props => [];
}
