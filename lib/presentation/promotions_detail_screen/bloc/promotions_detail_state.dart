part of 'promotions_detail_bloc.dart';

/// Represents the state of PromotionsDetail in the application.

// ignore_for_file: must_be_immutable
class PromotionsDetailState extends Equatable {
  PromotionsDetailState({this.promotionsDetailModelObj});

  PromotionsDetailModel? promotionsDetailModelObj;

  @override
  List<Object?> get props => [promotionsDetailModelObj];
  PromotionsDetailState copyWith({
    PromotionsDetailModel? promotionsDetailModelObj,
  }) {
    return PromotionsDetailState(
      promotionsDetailModelObj:
          promotionsDetailModelObj ?? this.promotionsDetailModelObj,
    );
  }
}
