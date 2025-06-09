part of 'promotions_detail_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PromotionsDetail widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class PromotionsDetailEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the PromotionsDetail widget is first created.
class PromotionsDetailInitialEvent extends PromotionsDetailEvent {
  @override
  List<Object?> get props => [];
}
