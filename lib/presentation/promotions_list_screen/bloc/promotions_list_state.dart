part of 'promotions_list_bloc.dart';

/// Represents the state of PromotionsList in the application.

// ignore_for_file: must_be_immutable
class PromotionsListState extends Equatable {
  PromotionsListState({this.promotionsListModelObj});

  PromotionsListModel? promotionsListModelObj;

  @override
  List<Object?> get props => [promotionsListModelObj];
  PromotionsListState copyWith({PromotionsListModel? promotionsListModelObj}) {
    return PromotionsListState(
      promotionsListModelObj:
          promotionsListModelObj ?? this.promotionsListModelObj,
    );
  }
}
