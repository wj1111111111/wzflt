import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/list102x1000_item_model.dart';
import '../models/listcollect_one_item_model.dart';
import '../models/listdeposit_item_model.dart';
import '../models/top_up_promo_popup_initial_model.dart';
import '../models/top_up_promo_popup_model.dart';
part 'top_up_promo_popup_event.dart';
part 'top_up_promo_popup_state.dart';

/// A bloc that manages the state of a TopUpPromoPopup according to the event that is dispatched to it.
class TopUpPromoPopupBloc
    extends Bloc<TopUpPromoPopupEvent, TopUpPromoPopupState> {
  TopUpPromoPopupBloc(TopUpPromoPopupState initialState) : super(initialState) {
    on<TopUpPromoPopupInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TopUpPromoPopupInitialEvent event,
    Emitter<TopUpPromoPopupState> emit,
  ) async {
    emit(
      state.copyWith(
        topUpPromoPopupInitialModelObj: state.topUpPromoPopupInitialModelObj
            ?.copyWith(
              listdepositItemList: fillListdepositItemList(),
              list102x1000ItemList: fillList102x1000ItemList(),
              listcollectOneItemList: fillListcollectOneItemList(),
            ),
      ),
    );
  }

  List<ListdepositItemModel> fillListdepositItemList() {
    return [
      ListdepositItemModel(
        deposit: "lbl_deposit".tr,
        extra: "lbl_extra".tr,
        tf: "lbl".tr,
        paymayapayment: "lbl_paymaya_payment".tr,
        upto: "lbl_up_to3".tr,
        depositOne: "lbl_deposit".tr,
        extraOne: "lbl_extra".tr,
        one: "lbl".tr,
        paymayapayment1: "lbl_paymaya_payment".tr,
        uptoOne: "lbl_up_to3".tr,
      ),
      ListdepositItemModel(),
      ListdepositItemModel(),
      ListdepositItemModel(),
      ListdepositItemModel(),
      ListdepositItemModel(),
      ListdepositItemModel(),
    ];
  }

  List<List102x1000ItemModel> fillList102x1000ItemList() {
    return [
      List102x1000ItemModel(
        x1000One: ImageConstant.img102X1000,
        baccaratone: ImageConstant.img1Baccarat1,
      ),
      List102x1000ItemModel(
        x1000One: ImageConstant.img211000,
        baccaratone: ImageConstant.imgBaccarat2,
      ),
      List102x1000ItemModel(
        x1000One: ImageConstant.img911000,
        baccaratone: ImageConstant.imgBaccarat1,
      ),
    ];
  }

  List<ListcollectOneItemModel> fillListcollectOneItemList() {
    return [
      ListcollectOneItemModel(
        collectOne: ImageConstant.img12,
        collectTwo: "lbl_collect".tr,
      ),
      ListcollectOneItemModel(collectOne: ImageConstant.img231000),
      ListcollectOneItemModel(collectOne: ImageConstant.img491000),
      ListcollectOneItemModel(
        collectOne: ImageConstant.imgFire,
        collectTwo: "lbl_hot".tr,
      ),
      ListcollectOneItemModel(
        collectOne: ImageConstant.img10733643587,
        collectTwo: "lbl_slot".tr,
      ),
      ListcollectOneItemModel(
        collectOne: ImageConstant.img136x36,
        collectTwo: "lbl_live".tr,
      ),
      ListcollectOneItemModel(
        collectOne: ImageConstant.img536x36,
        collectTwo: "lbl_bingo2".tr,
      ),
      ListcollectOneItemModel(),
      ListcollectOneItemModel(),
      ListcollectOneItemModel(),
      ListcollectOneItemModel(),
    ];
  }
}
