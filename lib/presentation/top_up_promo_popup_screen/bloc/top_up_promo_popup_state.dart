part of 'top_up_promo_popup_bloc.dart';

/// Represents the state of TopUpPromoPopup in the application.

// ignore_for_file: must_be_immutable
class TopUpPromoPopupState extends Equatable {
  TopUpPromoPopupState({
    this.topUpPromoPopupInitialModelObj,
    this.topUpPromoPopupModelObj,
  });

  TopUpPromoPopupModel? topUpPromoPopupModelObj;

  TopUpPromoPopupInitialModel? topUpPromoPopupInitialModelObj;

  @override
  List<Object?> get props => [
    topUpPromoPopupInitialModelObj,
    topUpPromoPopupModelObj,
  ];
  TopUpPromoPopupState copyWith({
    TopUpPromoPopupInitialModel? topUpPromoPopupInitialModelObj,
    TopUpPromoPopupModel? topUpPromoPopupModelObj,
  }) {
    return TopUpPromoPopupState(
      topUpPromoPopupInitialModelObj:
          topUpPromoPopupInitialModelObj ?? this.topUpPromoPopupInitialModelObj,
      topUpPromoPopupModelObj:
          topUpPromoPopupModelObj ?? this.topUpPromoPopupModelObj,
    );
  }
}
