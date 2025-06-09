part of 'promotions_list_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PromotionsList widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class PromotionsListEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the PromotionsList widget is first created.
class PromotionsListInitialEvent extends PromotionsListEvent {
  @override
  List<Object?> get props => [];
}
